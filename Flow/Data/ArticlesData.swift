//
//  ArticlesData.swift
//  Flow
//
//  Created by CTSS Students on 4/9/22.
//

import Foundation

struct HealthNews: Codable, Identifiable {

    var id: Int
    var title: String
    var url: String
    var imageURL: String
    var publisher: String
    var summary: String
    
}

class ReadData: ObservableObject {
    @Published var news = [HealthNews]()
    
    init(){
        loadData()
    }
    
    func loadData(){
        guard let url = Bundle.main.url(forResource: "Trial", withExtension: "json")
        else{
            print("JSON not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let news = try? JSONDecoder().decode([HealthNews].self, from: data!)
        self.news = news!
    }
}
