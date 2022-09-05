//
//  LineGraphView.swift
//  Flow
//
//  Created by Raditya on 4/9/22.
//

import SwiftUI

var data = [1, 2, 3, 4, 5, 3, 1]

struct LineGraphView: View {
    
    private var datas: [Double] = data.map {Double($0)/5}
    
    var body: some View {
     
        VStack {
            LineChartView(title: "", data: datas)
                .frame(height: 221)
            
        }
        
    }
    
}

struct LineGraphView_Previews: PreviewProvider {
    static var previews: some View {
        LineGraphView()
    }
}
