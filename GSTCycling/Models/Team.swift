//
//  Team.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//


import Foundation

/// Represents a professional cycling team.
/// This model is shared across races, riders, standings and API mapping.
struct Team: Identifiable, Hashable, Codable {
    let id = UUID()

    let name: String
    let shortName: String
    let country: String
    let uciCode: String

    let category: TeamCategory
}

enum TeamCategory: String, CaseIterable, Hashable, Codable {
    case worldTour = "WorldTour"
    case proTeam = "ProTeam"
    case continental = "Continental"
    case national = "National Team"
}
