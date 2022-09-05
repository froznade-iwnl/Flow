//
//  LineGraphViewTwo.swift
//  Flow
//
//  Created by CTSS Students on 5/9/22.
//

import SwiftUI

struct LineShape: Shape {
    var yValues: [Double]

    func path(in rect: CGRect) -> Path {
        let xIncrement = (rect.width / (CGFloat(yValues.count) - 1))
        var path = Path()
        path.move(to: CGPoint(x: 0.0,
                              y: (1.0 - yValues[0]) * Double(rect.height)))
        for i in 1..<yValues.count {
            let pt = CGPoint(x: (Double(i) * Double(xIncrement)),
                             y: (1.0 - yValues[i]) * Double(rect.height))
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
                    data: [0.2, 0.4, 0.3, 0.8, 0.5])
                    .frame(width: 300, height: 300, alignment: .center)
                
                Spacer().frame(height:50)
                
                HStack {
                    LineChartView(
                        title: "One",
                        data: [0.88, 0.76, 0.92, 0.18, 0.7, 0.51, 0.66, 0.35, 0.53])
                        .frame(width: 100, height: 100, alignment: .center)
                    
                    Spacer().frame(width:50)

                    LineChartView(
                        title: "Two",
                        data: [0.88, 0.76, 0.92, 0.18, 0.7, 0.51, 0.66, 0.35, 0.53, 0.63, 0.58, 0.24, 0.39, 0.47, 0.34, 0.45, 0.64, 0.1, 0.27, 0.16, 0.37, 0.53, 0.62, 0.39, 0.32, 0.24, 0.42, 0.6, 0.79, 0.54, 0.26, 0.74, 0.61, 0.83, 0.1, 0.47, 0.14, 0.86, 0.73, 0.62, 0.23, 0.11, 0.78, 0.12, 0.23, 0.33, 0.11, 0.94, 0.74, 0.19])
                        .frame(width: 150, height: 100, alignment: .center)
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
