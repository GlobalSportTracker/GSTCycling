//
//  SampleData.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import Foundation

enum SampleData {

    // MARK: - Race

    static let tourDeFrance = Race(
        name: "Tour de France",
        shortName: "TdF",
        country: "France",
        startDate: Date(),
        endDate: Date().addingTimeInterval(60 * 60 * 24 * 21),
        numberOfStages: 21,
        category: .grandTour
    )

    // MARK: - Stage

    static let stage5 = Stage(
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

    // MARK: - Teams

    static let uaeTeamEmirates = Team(
        name: "UAE Team Emirates XRG",
        shortName: "UAE",
        country: "United Arab Emirates",
        uciCode: "UAD",
        category: .worldTour
    )

    static let vismaLeaseABike = Team(
        name: "Team Visma | Lease a Bike",
        shortName: "Visma LAB",
        country: "Netherlands",
        uciCode: "TVL",
        category: .worldTour
    )

    static let soudalQuickStep = Team(
        name: "Soudal Quick-Step",
        shortName: "Soudal QS",
        country: "Belgium",
        uciCode: "SOQ",
        category: .worldTour
    )

    static let ineosGrenadiers = Team(
        name: "INEOS Grenadiers",
        shortName: "INEOS",
        country: "Great Britain",
        uciCode: "IGD",
        category: .worldTour
    )

    static let teams: [Team] = [
        uaeTeamEmirates,
        vismaLeaseABike,
        soudalQuickStep,
        ineosGrenadiers
    ]

    // MARK: - Riders

    static let tadejPogacar = Rider(
        firstName: "Tadej",
        lastName: "Pogačar",
        nationality: "Slovenia",
        team: uaeTeamEmirates,
        bibNumber: 1,
        birthDate: nil,
        height: nil,
        weight: nil,
        specialty: .generalClassification
    )

    static let jonasVingegaard = Rider(
        firstName: "Jonas",
        lastName: "Vingegaard",
        nationality: "Denmark",
        team: vismaLeaseABike,
        bibNumber: 11,
        birthDate: nil,
        height: nil,
        weight: nil,
        specialty: .generalClassification
    )

    static let remcoEvenepoel = Rider(
        firstName: "Remco",
        lastName: "Evenepoel",
        nationality: "Belgium",
        team: soudalQuickStep,
        bibNumber: 21,
        birthDate: nil,
        height: nil,
        weight: nil,
        specialty: .timeTrial
    )

    static let tomPidcock = Rider(
        firstName: "Tom",
        lastName: "Pidcock",
        nationality: "Great Britain",
        team: ineosGrenadiers,
        bibNumber: 31,
        birthDate: nil,
        height: nil,
        weight: nil,
        specialty: .puncheur
    )

    static let riders: [Rider] = [
        tadejPogacar,
        jonasVingegaard,
        remcoEvenepoel,
        tomPidcock
    ]
}
