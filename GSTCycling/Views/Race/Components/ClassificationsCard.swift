//
//  ClassificationsCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct ClassificationsCard: View {

    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            Label("CLASSIFICATIONS", systemImage: "trophy.fill")
                .font(AppTypography.caption.weight(.bold))
                .foregroundStyle(AppColors.textSecondary)

            classificationRow(
                jersey: "🟡",
                title: "General",
                rider: "Tadej Pogačar"
            )

            Divider()

            classificationRow(
                jersey: "🟢",
                title: "Points",
                rider: "Jasper Philipsen"
            )

            Divider()

            classificationRow(
                jersey: "🔴",
                title: "Mountains",
                rider: "Jonas Vingegaard"
            )

            Divider()

            classificationRow(
                jersey: "⚪",
                title: "Young Rider",
                rider: "Remco Evenepoel"
            )
        }
        .padding(20)
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }

    private func classificationRow(
        jersey: String,
        title: String,
        rider: String
    ) -> some View {

        HStack {

            Text(jersey)
                .font(.title2)

            VStack(alignment: .leading, spacing: 4) {

                Text(title)
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.textSecondary)

                Text(rider)
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textPrimary)
            }

            Spacer()
        }
    }
}

#Preview {
    ClassificationsCard()
}

