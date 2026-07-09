//
//  BreakawayCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//


import SwiftUI

struct BreakawayCard: View {
    let gap: String
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Label("Breakaway", systemImage: "figure.outdoor.cycle")
                    .font(AppTypography.title3)
                    .foregroundStyle(AppColors.textPrimary)

                Spacer()

                Text(gap)
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.live)
            }

            Text("3 riders ahead of the peloton")
                .font(AppTypography.subheadline)
                .foregroundStyle(AppColors.textSecondary)

            VStack(spacing: 10) {
                breakawayRider(name: "Tadej Pogačar", team: "UAE", bib: "#1")
                breakawayRider(name: "Jonas Vingegaard", team: "TVL", bib: "#11")
                breakawayRider(name: "Remco Evenepoel", team: "SOQ", bib: "#21")
            }
        }
        .padding(20)
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }

    private func breakawayRider(name: String, team: String, bib: String) -> some View {
        HStack(spacing: 12) {
            Text(bib)
                .font(AppTypography.caption.weight(.semibold))
                .foregroundStyle(AppColors.textSecondary)
                .frame(width: 42, alignment: .leading)

            VStack(alignment: .leading, spacing: 3) {
                Text(name)
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textPrimary)

                Text(team)
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.textSecondary)
            }

            Spacer()
        }
        .padding(12)
        .background(AppColors.secondaryBackground)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    BreakawayCard(gap: "+2:35")
}
