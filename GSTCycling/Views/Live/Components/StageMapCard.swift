//
//  StageMapCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct StageMapCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Label("Stage Map", systemImage: "map")
                    .font(AppTypography.title3)
                    .foregroundStyle(AppColors.textPrimary)

                Spacer()

                Text("LIVE")
                    .font(AppTypography.caption.weight(.bold))
                    .foregroundStyle(AppColors.live)
            }

            RoundedRectangle(cornerRadius: 18)
                .fill(AppColors.secondaryBackground)
                .frame(height: 220)
                .overlay {
                    VStack(spacing: 12) {
                        Image(systemName: "map.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(AppColors.primary)

                        Text("Interactive stage map")
                            .font(AppTypography.headline)
                            .foregroundStyle(AppColors.textPrimary)

                        Text("MapKit integration will be added in a later sprint.")
                            .font(AppTypography.caption)
                            .foregroundStyle(AppColors.textSecondary)
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                }
        }
        .padding(20)
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
}

#Preview {
    StageMapCard()
}

