//
//  UpcomingStagesCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//


import SwiftUI

struct UpcomingStagesCard: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            Label("UPCOMING STAGES", systemImage: "calendar")
                .font(AppTypography.caption.weight(.bold))
                .foregroundStyle(AppColors.textSecondary)

            stageRow(stage: "Stage 6", type: "Flat", distance: "180 km")

            Divider()

            stageRow(stage: "Stage 7", type: "Hilly", distance: "172 km")

            Divider()

            stageRow(stage: "Stage 8", type: "Mountain", distance: "145 km")
        }
        .padding(20)
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }

    private func stageRow(stage: String, type: String, distance: String) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(stage)
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textPrimary)

                Text(type)
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.textSecondary)
            }

            Spacer()

            Text(distance)
                .font(AppTypography.subheadline.weight(.semibold))
                .foregroundStyle(AppColors.primary)
        }
    }
}

#Preview {
    UpcomingStagesCard()
}
