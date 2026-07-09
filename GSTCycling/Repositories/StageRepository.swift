//
//  StageRepository.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import Foundation

protocol StageRepositoryProtocol {
    func currentStage() -> Stage
}

final class StageRepository: StageRepositoryProtocol {

    func currentStage() -> Stage {

        Stage(
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
    }
}

