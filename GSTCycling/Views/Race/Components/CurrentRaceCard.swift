//
//  CurrentRaceCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct CurrentRaceCard: View {

    let raceName: String
    let stageName: String
    let stageType: String
    let startLocation: String
    let finishLocation: String
    let distance: String
    let startTime: String
    let finishTime: String

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            HStack {
                Label("CURRENT RACE", systemImage: "flag.checkered")
                    .font(AppTypography.caption.weight(.bold))
                    .foregroundStyle(AppColors.textSecondary)

                Spacer()

                Text("LIVE")
                    .font(AppTypography.caption.weight(.bold))
                    .foregroundStyle(.black)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(AppColors.live)
                    .clipShape(Capsule())
            }

            VStack(alignment: .leading, spacing: 6) {
                Text(raceName)
                    .font(AppTypography.title)
                    .foregroundStyle(AppColors.textPrimary)

                Text("\(stageName) · \(stageType)")
                    .font(AppTypography.subheadline)
                    .foregroundStyle(AppColors.textSecondary)
            }

            HStack(spacing: 10) {

                Text(startLocation)
                    .font(AppTypography.headline.weight(.semibold))

                Image(systemName: "arrow.right")
                    .foregroundStyle(AppColors.textSecondary)

                Text(finishLocation)
                    .font(AppTypography.headline.weight(.semibold))

                Spacer()
            }

            Divider()

            HStack(spacing: 12) {
                metric(title: "Distance", value: distance)
                metric(title: "Start", value: startTime)
                metric(title: "Finish", value: finishTime)
            }
        }
        .padding(20)
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }

    private func metric(title: String, value: String) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(AppTypography.caption)
                .foregroundStyle(AppColors.textSecondary)

            Text(value)
                .font(AppTypography.subheadline.weight(.semibold))
                .foregroundStyle(AppColors.textPrimary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    CurrentRaceCard(
        raceName: "Tour de France",
        stageName: "Stage 5",
        stageType: "Mountain",
        startLocation: "Lannemezan",
        finishLocation: "Pau",
        distance: "156 km",
        startTime: "13:10",
        finishTime: "17:25"
    )
}

