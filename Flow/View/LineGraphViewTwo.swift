//
//  LineGraphViewTwo.swift
//  Flow
//
//  Created by Raditya Aryo Wahyudi on 5/9/22.
//

import SwiftUI

struct LineShape: Shape {
    var yValues: [Double]

    func path(in rect: CGRect) -> Path {
        let xIncrement = (rect.width / (CGFloat(yValues.count) - 1))
        var path = Path()
        path.move(to: CGPoint(x: 0.0,
                              y: (1.0 - Double(yValues[0])) * Double(rect.height)))
        for i in 0..<yValues.count {
            let pt = CGPoint(x: (Double(i) * Double(xIncrement)),
                             y: (1.0 - Double(yValues[i])) * Double(rect.height))
            path.addLine(to: pt)
        }
        return path
    }
}

struct LineGraphViewTwo: View {
    
//    var body: some View {
//        VStack {
//            Text("Line Chart")
//
//            ZStack {
//                Rectangle()
//                    .stroke(Color.gray, lineWidth: 3.0)
//                    .frame(width: 300, height: 300, alignment: .center)
//
//                LineShape(yValues: [0.2, 0.4, 0.3, 0.8, 0.5])
//                    .stroke(Color.red, lineWidth: 2.0)
//                    .frame(width: 300, height: 300, alignment: .center)
//            }
//
//            Spacer()
//
//            LineChartView(title: "WACC", data: [1, 3, 4, 5, 2])
//                .frame(width: 100, height: 100)
//        }
//    }
//
    

    var body: some View {
        ZStack {
            Color.BGColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Line Chart")
                
                LineChartView(
                    title: "the chart title",
                    data: [2, 4, 3, 5, 6, 4])
                    .frame(width: 300, height: 300, alignment: .center)
                
                Spacer().frame(height:50)
                
                HStack {
                    LineChartView(
                        title: "One",
                        data: [1, 232, 0 ,535, 1])
                        .frame(width: 100, height: 100, alignment: .center)
                    
                    Spacer().frame(width:50)

                    
                }
                
                Spacer()
            }
        }
    }
    




}

struct LineGraphViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        LineGraphViewTwo()
    }
}
