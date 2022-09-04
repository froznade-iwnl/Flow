//
//  HomeScreenTwo.swift
//  Flow
//
//  Created by CTSS Students on 4/9/22.
//

import SwiftUI


struct HomeScreenTwo: View {
    
    var username: String
    
    var body: some View {
        
        ZStack{
            
            Color.BGColor
                .ignoresSafeArea(.all)
            
            VStack(alignment: .center){
                
                Text("Welcome Back, \(username)")
                    .foregroundColor(.TextColor)
                    .font(.system(.largeTitle, design: .rounded))
                    .padding()
                
                ZStack {
                    Rectangle()
                        .frame(height: 175)
                        .foregroundColor(.white)
                    
                    VStack{
                        
                        Text("How are you feeling today?")
                            .foregroundColor(.TextColor)
                            .font(.headline)
                        
                    }
                }
                
                Text("Your Weekly Emotional Status Data")
                    .foregroundColor(.TextColor)
                    .font(.system(.headline, design: .rounded))
                    .padding()
                
                Rectangle()
                    .frame(width: 334, height: 221)
                    .foregroundColor(.white)
                    .border(.yellow)
                
                Text("View data for the past month")
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .underline()
                    .offset(x: 70)
                
        
        
                
            }
        }
        
    }
}

struct HomeScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenTwo(username: "Lisa")
    }
}
