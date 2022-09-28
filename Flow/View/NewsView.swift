//
//  NewsView.swift
//  Flow
//
//  Created by Raditya Aryo Wahyudi on 4/9/22.
//

import SwiftUI

struct NewsView: View {
    @StateObject var data = ReadData()
    @State private var opac = 0.0
    
//    init(){
//        UITableView.appearance().backgroundColor = UIColor(Color.BGColor)
//    }
    
    var body: some View {
        
        NavigationView {
            ZStack{
                
                BackgroundLiveView()
                
                VStack{
                    ArticlesListView()
                        .opacity(opac)
                }
                .navigationTitle("News")
                .environmentObject(data)
                .onAppear(){
                    withAnimation(.easeIn(duration: 1)) {
                        opac = 1
                    }
                }
            }
        }
        
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
