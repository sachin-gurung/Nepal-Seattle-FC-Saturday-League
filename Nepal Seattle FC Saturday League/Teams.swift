//
//  Teams.swift
//  Nepal Seattle FC Saturday League
//
//  Created by Sachin Gurung on 6/11/24.
//

import Foundation

struct Teams {
    var ranking: Int
    var name: String
    var wins: Int
    var ties: Int
    var losses: Int
    
    var totalPoints: Int {
        return (wins * 3)+ties
    }
}
