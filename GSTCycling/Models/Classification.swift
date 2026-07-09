//
//  Classification.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import Foundation

/// Represents a rider's position in a race classification.
struct Classification: Identifiable, Hashable, Codable {
    let id = UUID()

    let type: ClassificationType

    let position: Int

    let rider: Rider

    let value: Double

    let team: Team
}

enum ClassificationType: String, CaseIterable, Hashable, Codable {

    case general = "General Classification"

    case points = "Points Classification"

    case mountains = "Mountains Classification"

    case youth = "Young Rider Classification"

    case team = "Team Classification"

    case combativity = "Combativity Award"
}
