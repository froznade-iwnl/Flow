//
//  HomeScreenView.swift
//  Flow
//
//  Created by CTSS Students on 4/9/22.
//

import SwiftUI

extension Color {
    
    static let AppColor = Color("AppColor")
    static let BGColor = Color("BGColor")
    static let TextColor = Color("TextColor")
    
}

struct HomeScreenView: View {
    
    var username: String
    @State var todayState = 0
    
    var body: some View {
        
        ZStack{
            VStack(alignment: .leading){
                
                Text("Good")
                    .font(.title)
                Text("Morning")
                    .font(.largeTitle)
                    .bold()
                
                Text("How do you feel today?")
                    .font(.system(.body, design: .rounded))
                
                HStack {
                
                    //I'm Happy
                    Button {
                        todayState = 1
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 48, height: 48)
                                .foregroundColor(.gray)
                                .opacity(0.4)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                            Text("😄")
                                .font(.body)
                        }
                    }
                    
                    Spacer()
                    
                    //I'm OK
                    Button {
                        todayState = 1
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 48, height: 48)
                                .foregroundColor(.gray)
                                .opacity(0.4)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                            Text("😄")
                                .font(.body)
                        }
                    }
                    
                    Spacer()
                    
                    //Sad
                    Button {
                        todayState = 1
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 48, height: 48)
                                .foregroundColor(.gray)
                                .opacity(0.4)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                            Text("😄")
                                .font(.body)
                        }
                    }
                    
                }
                
                
            }
            .padding()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView(username: "User0")
    }
}
