//
//  ContentView.swift
//  Flow
//
//  Created by CTSS Students on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: Tab = .house
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            VStack{
                switch selectedTab {
                case .house:
                    HomeScreenView(username: "Name")
                case .leaf:
                    HomeScreenTwo(username: "Name")
                }
            }
            
            VStack {
                Spacer()
                CustomTabBarView(selectedTab: $selectedTab)
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
