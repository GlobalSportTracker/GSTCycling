//
//  Stage.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import Foundation

import Foundation

struct Stage: Identifiable, Hashable {
    let id = UUID()
    let raceName: String
    let stageName: String
    let startLocation: String
    let finishLocation: String
    let distance: String
    let stageType: StageType
    let startTime: String
    let finishTime: String?
    let remainingDistance: String?
    let isLive: Bool
}

enum StageType: String, Hashable {
    case flat = "Flat"
    case hilly = "Hilly"
    case mountain = "Mountain"
    case timeTrial = "Time Trial"
    case restDay = "Rest Day"
}
