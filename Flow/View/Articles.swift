//
//  Articles.swift
//  Flow
//
//  Created by CTSS Students on 4/9/22.
//

import SwiftUI
import CachedAsyncImage

struct Articles: View {
    
    var title: String
    var url: String
    var imageURL: String
    var publisher: String
    var summary: String
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text(publisher)
                .foregroundColor(.blue)
                .italic()
            
            HStack(alignment: .center){
                CachedAsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .easeInOut)){ phase in
                    
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }else{
                        HStack{
                            ProgressView()
                        }
                    }
                }
            }
            
            Text(title)
                .font(.headline)
                .padding(8)
            
            Text(summary)
                .font(.body)
                .lineLimit(5)
                .padding(8)
            
        }
    }
}

struct Articles_Previews: PreviewProvider {
    static var previews: some View {
        Articles(title: "Check", url: "test", imageURL: "https://www.pngitem.com/pimgs/m/199-1992088_anime-girls-anime-girl-cute-kawaii-anime-girl.png", publisher: "NewsToday", summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget neque nec orci porttitor viverra. Donec imperdiet neque lacus, at pellentesque tortor ultrices eget. Proin tempus bibendum ex, ac tempus enim luctus vitae. Sed libero enim, porta vel bibendum sit amet, fringilla id diam. Donec pretium ligula dolor, in sollicitudin.")
    }
}
