//
//  HomeScreenTwo.swift
//  Flow
//
//  Created by Raditya Aryo Wahyudi on 4/9/22.
//

import SwiftUI

extension Color {
    
    static let AppColor = Color("AppColor")
    static let BGColor = Color("BGColor")
    static let TextColor = Color("TextColor")
    
}

struct HomeScreenTwo: View {
    var username: String
    @AppStorage("haveCheckedIn") var isCheckInDone = false
    @State var checkInToggle = false
    @AppStorage("daysCount") var daysLoggedIn = 0
    @AppStorage("todayDate") var todayDate: Date = Date.now
    @AppStorage("emojiOfTheDay") private var todayEmoji = ""
    @State private var opac = 1.0
    @State private var data = UserDefaults.standard.object(forKey: "myKey") as? [Double] ?? [Double]()
    
    var body: some View {
        
        let index = daysLoggedIn%30
        
        ZStack{
            
            BackgroundLiveView()
                .ignoresSafeArea()
            
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
                    Text("\(Date.now, style: .date)")
                        .foregroundColor(.black)
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
                           
                            Text("You're feeling \(todayEmoji) today!")
                                .font(.system(.title, design: .rounded))
                                
                            
                            Text("Don't forget to check in again tomorrow!")
                                .font(.caption)
                                .padding(.top, 8)
                            
                        }.opacity(opac)
                        
                        
                        
                    } else {
                        
                        VStack(alignment: .center){
                                
                            Text("How are you feeling today?")
                                .foregroundColor(.TextColor)
                                .font(.headline)
                            
                            HStack{
                                
                                Button {
                                    moodHistory[index] = 5.0
                                    daysLoggedIn += 1
                                    print(moodHistory)
                                    opac = 0
                                    todayEmoji = "😁"
                                    isCheckInDone = true
                                    withAnimation(.easeOut(duration: 1)){
                                        opac = 1
                                    }
                                    UserDefaults.standard.set(moodHistory, forKey: "myKey")
                                    data = UserDefaults.standard.object(forKey: "myKey") as? [Double] ?? [Double]()
                        
                                } label: {
                                    Text("😁")
                                        .padding()
                                        .background(.gray.opacity(0.2))
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                }
                                    
                                
                                Spacer()
                                
                                
                                Button {
                                    moodHistory[index] = 4.0
                                    daysLoggedIn += 1
                                    print(moodHistory)
                                    todayEmoji = "😀"
                                    opac = 0
                                    isCheckInDone = true
                                    withAnimation(.easeIn(duration: 0.5)){
                                        opac = 1
                                    }
                                    data = UserDefaults.standard.object(forKey: "myKey") as? [Double] ?? [Double]()
                                    UserDefaults.standard.set(moodHistory, forKey: "myKey")
                                } label: {
                                    Text("😀")
                                        .padding()
                                        .background(.gray.opacity(0.2))
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    
                                }

                                Spacer()
                                
                                Button {
                                    moodHistory[index] = 3.0
                                    opac = 0
                                    daysLoggedIn += 1
                                    print(moodHistory)
                                    todayEmoji = "😐"
                                    isCheckInDone = true
                                    withAnimation(.easeIn(duration: 1)){
                                        opac = 1
                                    }
                                    data = UserDefaults.standard.object(forKey: "myKey") as? [Double] ?? [Double]()
                                    UserDefaults.standard.set(moodHistory, forKey: "myKey")
                                } label: {
                                    Text("😐")
                                        .padding()
                                        .background(.gray.opacity(0.2))
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                }
                                
                                
                                Spacer()
                                
                                Button {
                                    moodHistory[index] = 2.0
                                    daysLoggedIn += 1
                                    print(moodHistory)
                                    todayEmoji = "🙁"
                                    opac = 0
                                    isCheckInDone = true
                                    withAnimation(.easeIn(duration: 1)){
                                        opac = 1
                                    }
                                    data = UserDefaults.standard.object(forKey: "myKey") as? [Double] ?? [Double]()
                                    UserDefaults.standard.set(moodHistory, forKey: "myKey")
                                } label: {
                                    Text("🙁")
                                        .padding()
                                        .background(.gray.opacity(0.2))
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                }

                                
                                Spacer()
                                
                                Button {
                                    moodHistory[index] = 1.0
                                    daysLoggedIn += 1
                                    print(moodHistory)
                                    todayEmoji = "😣"
                                    isCheckInDone = true
                                    opac = 0
                                    withAnimation(.easeIn(duration: 1)){
                                        opac = 1
                                    }
                                    data = UserDefaults.standard.object(forKey: "myKey") as? [Double] ?? [Double]()
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
                        
                    }
                }
                
                    
                
                    Spacer()
                    
                
                    Text("Your Weekly Emotional Status Data")
                        .foregroundColor(.black)
                        .font(.system(.headline, design: .rounded))
                    
                LineGraphView(datas: data.count == 0 ? [0.0] : data)
//                LineChartView(title: "", data: datas)
//                    .frame(height: 221)
                    
                    
                HStack {
                    Spacer()
                    
                   
                        Text("This is your record for the past month")
                        .font(.footnote)
                        .foregroundColor(.blue)
                        .underline()
                    
                    
                }
                  
                Spacer()
                Spacer()
                
                }
                .padding()
                
        }.onAppear(){
            print(Calendar.current.isDate(todayDate, equalTo: Date.now, toGranularity: .day))
            if Calendar.current.isDate(todayDate, equalTo: Date.now, toGranularity: .day) == false{
                isCheckInDone = false
                todayDate = Date.now
            }
        }
    }
}

struct HomeScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenTwo(username: "Lisa")
    }
}
