//
//  HomeScreenTwo.swift
//  Flow
//
//  Created by Raditya on 4/9/22.
//

import SwiftUI

struct HomeScreenTwo: View {
    var username: String
    @State var isCheckInDone = false
    @State var checkInToggle = false
    @AppStorage("dLI") var daysLoggedIn = 0
    @State private var todayEmoji = ""
    @State private var opac = 1.0
    @AppStorage("dn") var datass = ""
    @State private var data = [Double](repeating: 0, count: 7)
    
    var body: some View {
        
        let index = daysLoggedIn%30
        
        ZStack{
            
            Color.BGColor
                .ignoresSafeArea(.all)
            
            VStack(alignment: .center){
                
                Spacer()
                
                HStack {
                    
                    Text("Welcome Back, \(username)")
                        .foregroundColor(.TextColor)
                        .font(.system(.title, design: .rounded))
                        .bold()
                    
                    Spacer()
                }
                
                HStack {
                    Text("\(Date.now, style: .date) \(daysLoggedIn)")
                        .foregroundColor(.gray)
                        .font(.caption)
                    
                    Spacer()
                }
                .padding(.bottom)
                
            
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 12)
                        .frame(height: 175)
                        .foregroundColor(.white)
                        .shadow(radius: 4, y: 5)
                    
                    if isCheckInDone {
                        
                        VStack{
                            Text("You are feeling")
                                .font(.title)
                                
                            Text(todayEmoji == "" ? "🤯":todayEmoji)
                                .font(.system(size: 64))
                            
                            Text("today")
                                .font(.title)
                            
                            Button("test"){
                                isCheckInDone.toggle()
                            }
                        }.opacity(opac)
                        
                        
                        
                    } else {
                        
                        VStack(alignment: .center){
                                
                            Text("How are you feeling today?")
                                .foregroundColor(.TextColor)
                                .font(.headline)
                            
                            HStack{
                                
                                Button {
                                    moodHistory[index] = 1
                                    daysLoggedIn += 1
                                    print(moodHistory)
                                    opac = 0
                                    todayEmoji = "😁"
                                    isCheckInDone = true
                                    withAnimation(.easeIn(duration: 1)){
                                        opac = 1
                                    }
                                    UserDefaults.standard.set(moodHistory, forKey: "myKey")
                        
                                } label: {
                                    Text("😁")
                                        .padding()
                                        .background(.gray.opacity(0.2))
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                }
                                    
                                
                                Spacer()
                                
                                
                                Button {
                                    moodHistory[index] = 2
                                    daysLoggedIn += 1
                                    print(moodHistory)
                                    todayEmoji = "😀"
                                    opac = 0
                                    isCheckInDone = true
                                    withAnimation(.easeIn(duration: 1)){
                                        opac = 1
                                    }
                                    UserDefaults.standard.set(moodHistory, forKey: "myKey")
                                } label: {
                                    Text("😀")
                                        .padding()
                                        .background(.gray.opacity(0.2))
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    
                                }

                                Spacer()
                                
                                Button {
                                    moodHistory[index] = 3
                                    opac = 0
                                    daysLoggedIn += 1
                                    print(moodHistory)
                                    todayEmoji = "😐"
                                    isCheckInDone = true
                                    withAnimation(.easeIn(duration: 1)){
                                        opac = 1
                                    }
                                    UserDefaults.standard.set(moodHistory, forKey: "myKey")
                                } label: {
                                    Text("😐")
                                        .padding()
                                        .background(.gray.opacity(0.2))
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                }
                                
                                
                                Spacer()
                                
                                Button {
                                    moodHistory[index] = 4
                                    daysLoggedIn += 1
                                    print(moodHistory)
                                    todayEmoji = "🙁"
                                    opac = 0
                                    isCheckInDone = true
                                    withAnimation(.easeIn(duration: 1)){
                                        opac = 1
                                    }
                                    UserDefaults.standard.set(moodHistory, forKey: "myKey")
                                } label: {
                                    Text("🙁")
                                        .padding()
                                        .background(.gray.opacity(0.2))
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                }

                                
                                Spacer()
                                
                                Button {
                                    moodHistory[index] = 5
                                    daysLoggedIn += 1
                                    print(moodHistory)
                                    todayEmoji = "😣"
                                    isCheckInDone = true
                                    opac = 0
                                    withAnimation(.easeIn(duration: 1)){
                                        opac = 1
                                    }
                                    UserDefaults.standard.set(moodHistory, forKey: "myKey")
                                } label: {
                                    Text("😣")
                                        .padding()
                                        .background(.gray.opacity(0.2))
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    
                                    }
                                }

                                
                        }
                        .padding()
                        .opacity(opac)
                    }
                }
                
                    
                
                    Spacer()
                    
                
                    Text("Your Weekly Emotional Status Data")
                        .foregroundColor(.TextColor)
                        .font(.system(.headline, design: .rounded))
                    
                    LineGraphView()
//                LineChartView(title: "", data: datas)
//                    .frame(height: 221)
                    
                    
                HStack {
                    Spacer()
                    
                    Button {
                            print("Tapped")
                        } label: {
                            Text("View data for the past month")
                            .font(.footnote)
                            .foregroundColor(.blue)
                            .underline()
                    }
                    
                }
                  
                Spacer()
                Spacer()
                
                }
                .padding()
                
        }
    }
}

struct HomeScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenTwo(username: "Lisa")
    }
}
