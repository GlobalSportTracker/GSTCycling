//
//  LiveStageCard.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct LiveStageCard: View {
    let viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {

            HStack {

                if viewModel.isLive {

                    Label("LIVE", systemImage: "dot.radiowaves.left.and.right")
                        .font(AppTypography.caption.weight(.bold))
                        .foregroundStyle(AppColors.live)

                }

                Spacer()
            }

            Text(viewModel.raceName)
                .font(AppTypography.title)
                .foregroundStyle(AppColors.textPrimary)

            Text("\(viewModel.stageName) · \(viewModel.stageType)")
                .font(AppTypography.subheadline)
                .foregroundStyle(AppColors.textSecondary)

        }
        .padding()
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
}

#Preview {
    LiveStageCard(viewModel: HomeViewModel())
}
