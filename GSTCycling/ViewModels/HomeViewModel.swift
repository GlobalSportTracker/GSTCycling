//
//  HomeViewModel.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import Foundation
import Observation

@Observable
final class HomeViewModel {

    private let repository: RaceRepositoryProtocol

    init(repository: RaceRepositoryProtocol = RaceRepository()) {
        self.repository = repository
    }

    let stage = Stage(
        raceName: "Tour de France",
        stageName: "Stage 5",
        startLocation: "Lannemezan",
        finishLocation: "Pau",
        distance: "156 km",
        stageType: .mountain,
        startTime: "13:10",
        finishTime: "17:18",
        remainingDistance: "97 km",
        isLive: true
    )

    var currentRace: Race {
        repository.currentRace()
    }

    var raceName: String { currentRace.name }
    var stageName: String { stage.stageName }
    var startLocation: String { stage.startLocation }
    var finishLocation: String { stage.finishLocation }
    var distance: String { stage.distance }
    var stageType: String { stage.stageType.rawValue }
    var startTime: String { stage.startTime }
    var remainingDistance: String { stage.remainingDistance ?? "-" }
    var isLive: Bool { stage.isLive }

    // MARK: - Race

    // MARK: - Today's Stage

    // MARK: - Live Data

    var leaderName = "Jonas Vingegaard"

    var pelotonGap = "+2:35"

    var windSpeed = "21 km/h"

    var temperature = "24°C"
}
