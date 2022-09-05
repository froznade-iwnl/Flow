//
//  EmoData.swift
//  Flow
//
//  Created by Raditya Aryo Wahyudi on 4/9/22.
//

import Foundation

struct User {
    static var username = ""
    static var daysLogin = 0
}


let userDefaults = UserDefaults.standard

var moodHistory = userDefaults.array(forKey: "myKey") ?? [Double](repeating: 0, count: 30)

extension Date: RawRepresentable {
    private static let formatter = ISO8601DateFormatter()
    
    public var rawValue: String {
        Date.formatter.string(from: self)
    }
    
    public init?(rawValue: String) {
        self = Date.formatter.date(from: rawValue) ?? Date()
    }
}
