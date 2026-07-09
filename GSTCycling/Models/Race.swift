//
//  Race.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import Foundation

struct Race: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let shortName: String
    let country: String
    let startDate: Date
    let endDate: Date
    let numberOfStages: Int
    let category: RaceCategory
}

enum RaceCategory: String, CaseIterable, Hashable {
    case grandTour = "Grand Tour"
    case monument = "Monument"
    case worldTour = "World Tour"
    case continental = "Continental"
    case national = "National"
    case championship = "Championship"
}

