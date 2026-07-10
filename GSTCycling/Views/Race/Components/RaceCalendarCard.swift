//
//  RaceCalendarCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 10.07.2026.
//

import SwiftUI

struct RaceCalendarCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Label("RACE CALENDAR", systemImage: "calendar")
                .font(AppTypography.caption.weight(.bold))
                .foregroundStyle(AppColors.textSecondary)

            calendarRow(
                date: "4–26 Jul",
                country: "France",
                race: "Tour de France",
                status: "LIVE"
            )

            Divider()

            calendarRow(
                date: "1–9 Aug",
                country: "France",
                race: "Tour de France Femmes",
                status: "UPCOMING"
            )

            Divider()

            calendarRow(
                date: "22 Aug–13 Sep",
                country: "Spain",
                race: "Vuelta a España",
                status: "UPCOMING"
            )
        }
        .padding(20)
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }

    private func calendarRow(
        date: String,
        country: String,
        race: String,
        status: String
    ) -> some View {
        HStack(spacing: 14) {
            Image(systemName: "flag.fill")
                .font(.title3)
                .foregroundStyle(AppColors.primary)
                .frame(width: 30)

            VStack(alignment: .leading, spacing: 4) {
                Text(race)
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textPrimary)

                Text("\(country) · \(date)")
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.textSecondary)
            }

            Spacer()

            Text(status)
                .font(AppTypography.caption.weight(.bold))
                .foregroundStyle(status == "LIVE" ? .black : AppColors.textSecondary)
                .padding(.horizontal, 10)
                .padding(.vertical, 6)
                .background(
                    status == "LIVE"
                    ? AppColors.live
                    : AppColors.secondaryBackground
                )
                .clipShape(Capsule())
        }
    }
}

#Preview {
    RaceCalendarCard()
}
