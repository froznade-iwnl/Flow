//
//  ArticlesListView.swift
//  Flow
//
//  Created by CTSS Students on 4/9/22.
//

import SwiftUI

struct ArticlesListView: View {
    
    @EnvironmentObject var data: ReadData
    @Environment(\.openURL) var openURL
    private var textWidth = 300.0
    
    var body: some View {
        
        ZStack {
            
            Color.BGColor
                .ignoresSafeArea(.all)
            
            List {
                    ForEach(data.news){ newss in
                        Articles(title: newss.title, url: newss.url, imageURL: newss.imageURL, publisher: newss.publisher, summary: newss.summary)
                            .onTapGesture {
                                openURL(URL(string: newss.url)!)
                            }
                    }
                    .padding()
            }
        }
        
        
    }
}

struct ArticlesListView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesListView()
            .environmentObject(ReadData())
    }
}
