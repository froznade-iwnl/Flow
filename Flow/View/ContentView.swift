//
//  ContentView.swift
//  Flow
//
//  Created by CTSS Students on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: Tab = .house
    @AppStorage("ajdw") var isNew = true
    @State var user = ""
    @AppStorage("myname") var myname = ""
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            VStack{
                switch selectedTab {
                case .house:
                    HomeScreenTwo(username: myname == "" ? "User0" : myname)
                        .onAppear(){
                            user = myname
                            print(user)
                        }
                case .newspaper:
                    NewsView()
                }
            
            }
            
            VStack{
                Spacer()
                CustomTabBarView(selectedTab: $selectedTab)
            }
            
        }
        .fullScreenCover(isPresented: $isNew, onDismiss: {
            myname = User.username
        }, content: LoginView.init)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
