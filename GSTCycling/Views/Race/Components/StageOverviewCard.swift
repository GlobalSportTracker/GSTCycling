//
//  StageOverviewCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct StageOverviewCard: View {

    let distance: String
    let stageType: String

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            Label("STAGE OVERVIEW", systemImage: "map")
                .font(AppTypography.caption.weight(.bold))
                .foregroundStyle(AppColors.textSecondary)

            HStack(spacing: 12) {

                overviewMetric(
                    title: "Stages",
                    value: "21"
                )

                overviewMetric(
                    title: "Today",
                    value: distance
                )

                overviewMetric(
                    title: "Type",
                    value: stageType
                )
            }
        }
        .padding(20)
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }

    private func overviewMetric(
        title: String,
        value: String
    ) -> some View {

        VStack(alignment: .leading, spacing: 4) {

            Text(title)
                .font(AppTypography.caption)
                .foregroundStyle(AppColors.textSecondary)

            Text(value)
                .font(AppTypography.headline.weight(.semibold))
                .foregroundStyle(AppColors.textPrimary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    StageOverviewCard(
        distance: "156 km",
        stageType: "Mountain"
    )
}
