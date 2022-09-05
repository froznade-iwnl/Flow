//
//  LineChartView.swift
//  Flow
//
//  Created by Raditya Aryo Wahyudi on 5/9/22.
//

import SwiftUI

struct ChartAreaView: View {
    var data: [Double]
    
    var body: some View {
        ZStack {
//            RoundedRectangle(cornerRadius: 12.0)
//                .fill(Color.white)
//                .shadow(radius: 4, y: 4)
//            
            LineShape(yValues: data)
                .stroke(Color.TextColor, lineWidth: 2.0)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 4, y: 4)
        }
    }
}



struct ChartHeaderView: View {
    var title: String
    var height: CGFloat
    
    var body: some View {
        Text(title)
            .frame(height: height)
    }
}



struct LineChartView: View {
    var title: String
    var data: [Double]
    
    var body: some View {
        GeometryReader { gr in
            
            VStack {
                ChartAreaView(data: data)
            }
        }
    }
}

struct LineChartView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartView(title: "WACC", data: [1, 2, 3, 4, 5, 3, 6])
    }
}
