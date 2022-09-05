//
//  EmoData.swift
//  Flow
//
//  Created by Raditya on 4/9/22.
//

import Foundation

struct User {
    static var username = ""
    static var daysLogin = 0
}


let userDefaults = UserDefaults.standard

var moodHistory = userDefaults.array(forKey: "myKey") ?? [Double](repeating: 0, count: 30)
