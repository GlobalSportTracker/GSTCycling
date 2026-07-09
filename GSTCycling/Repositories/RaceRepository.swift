//
//  RaceRepository.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import Foundation

protocol RaceRepositoryProtocol {
    func currentRace() -> Race
}

final class RaceRepository: RaceRepositoryProtocol {

    func currentRace() -> Race {

        Race(
            name: "Tour de France",
            shortName: "TdF",
            country: "France",
            startDate: Date(),
            endDate: Date().addingTimeInterval(60 * 60 * 24 * 21),
            numberOfStages: 21,
            category: .grandTour
        )
    }
}

