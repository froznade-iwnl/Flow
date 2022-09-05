//
//  ContentView.swift
//  Flow
//
//  Created by Raditya Aryo Wahyudi on 2/9/22.
//
    
import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case newspaper

}
                

struct CustomTabBarView: View {
    
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    private var tabColor: Color {
        switch selectedTab {
        case .house:
            return .green
        case .newspaper:
            return .blue
        }
    }
    
    var body: some View {
            
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue){ tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage:tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25:1.0)
                        .foregroundColor(selectedTab == tab ? tabColor:.gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
        }
        .frame(width: nil, height: 60)
        .background(.thickMaterial)
        .cornerRadius(10)
        .padding()
        
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView(selectedTab: .constant(.house))
    }
}
