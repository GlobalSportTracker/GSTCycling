//
//  Rider.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import Foundation

/// Represents a professional cyclist.
/// This model is shared across live tracking, favourites, standings and rider profiles.
struct Rider: Identifiable, Hashable, Codable {
    let id = UUID()

    let firstName: String
    let lastName: String
    let nationality: String
    let team: Team
    let bibNumber: Int?
    let birthDate: Date?
    let height: Double?
    let weight: Double?
    let specialty: RiderSpecialty

    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

enum RiderSpecialty: String, CaseIterable, Hashable, Codable {
    case generalClassification = "General Classification"
    case climber = "Climber"
    case sprinter = "Sprinter"
    case puncheur = "Puncheur"
    case timeTrial = "Time Trial"
    case domestique = "Domestique"
    case allRounder = "All-Rounder"
}
