//
//  LineGraphView.swift
//  Flow
//
//  Created by Raditya Aryo Wahyudi on 4/9/22.
//

import SwiftUI



let data = UserDefaults.standard.object(forKey: "myKey") as? [Double] ?? [Double]()


struct LineGraphView: View {
    
//    var data: [Any]
    var datas: [Double]
//    var datas = Array(data.prefix(5)).map {$0/5}
//    var datas = [0.1, 0.2, 0.3, 0.4]
    
    var body: some View {
     
        VStack {
            
            LineChartView(title: "", data: datas.map{$0/5})
                .frame(height: 221)
            
            
        }
        
    }
    
}

struct LineGraphView_Previews: PreviewProvider {
    static var previews: some View {
        LineGraphView(datas: data)
    }
}
