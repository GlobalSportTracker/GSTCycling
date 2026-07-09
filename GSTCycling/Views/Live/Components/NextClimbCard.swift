//
//  NextClimbCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct NextClimbCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Label("Next Climb", systemImage: "mountain.2")
                    .font(AppTypography.title3)
                    .foregroundStyle(AppColors.textPrimary)

                Spacer()

                Text("HC")
                    .font(AppTypography.caption.weight(.bold))
                    .foregroundStyle(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(AppColors.primary)
                    .clipShape(Capsule())
            }

            Text("Col du Tourmalet")
                .font(AppTypography.title2)
                .foregroundStyle(AppColors.textPrimary)

            HStack(spacing: 20) {
                metric(title: "Length", value: "12.5 km")
                metric(title: "Gradient", value: "8.3%")
                metric(title: "Ahead", value: "8 km")
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
                .font(AppTypography.headline)
                .foregroundStyle(AppColors.textPrimary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    NextClimbCard()
}
