//
//  RaceView.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct RaceView: View {
    @State private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 24) {
                    headerSection
                    CurrentRaceCard(
                        raceName: viewModel.raceName,
                        stageName: viewModel.stageName,
                        stageType: viewModel.stageType,
                        startLocation: viewModel.startLocation,
                        finishLocation: viewModel.finishLocation,
                        distance: viewModel.distance,
                        startTime: viewModel.startTime,
                        finishTime: viewModel.finishTime
                    )
                    StageOverviewCard(
                        distance: viewModel.distance,
                        stageType: viewModel.stageType
                    )
                    UpcomingStagesCard()
                    ClassificationsCard()
                    RecentResultsCard()
                    RaceCalendarCard()
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 16)
                .padding(.bottom, 32)
            }
        }
    }

    private var headerSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Race Center")
                .font(AppTypography.largeTitle)
                .foregroundStyle(AppColors.textPrimary)

            Text("Race information, stages and classifications.")
                .font(AppTypography.body)
                .foregroundStyle(AppColors.textSecondary)
        }
    }
    
}

#Preview {
    RaceView()
}
