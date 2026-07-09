//
//  WeatherCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct WeatherCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Label("Weather", systemImage: "sun.max.fill")
                    .font(AppTypography.title3)
                    .foregroundStyle(AppColors.textPrimary)

                Spacer()

                Text("24°C")
                    .font(AppTypography.title2.weight(.bold))
                    .foregroundStyle(AppColors.primary)
            }

            Text("Sunny")
                .font(AppTypography.headline)
                .foregroundStyle(AppColors.textPrimary)

            HStack(spacing: 20) {
                metric(title: "Wind", value: "22 km/h")
                metric(title: "Direction", value: "NW")
                metric(title: "Humidity", value: "58%")
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
    WeatherCard()
}
