//
//  RecentResultsCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 10.07.2026.
//

import SwiftUI

struct RecentResultsCard: View {

    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            Label("RECENT RESULTS", systemImage: "flag.checkered")
                .font(AppTypography.caption.weight(.bold))
                .foregroundStyle(AppColors.textSecondary)

            resultRow(
                position: "🥇",
                rider: "Tadej Pogačar",
                result: "4h 12m 38s"
            )

            Divider()

            resultRow(
                position: "🥈",
                rider: "Jonas Vingegaard",
                result: "+0:18"
            )

            Divider()

            resultRow(
                position: "🥉",
                rider: "Remco Evenepoel",
                result: "+0:42"
            )
        }
        .padding(20)
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }

    private func resultRow(
        position: String,
        rider: String,
        result: String
    ) -> some View {

        HStack {

            Text(position)
                .font(.title2)

            VStack(alignment: .leading, spacing: 4) {

                Text(rider)
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textPrimary)

                Text(result)
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.textSecondary)
            }

            Spacer()
        }
    }
}

#Preview {
    RecentResultsCard()
}
