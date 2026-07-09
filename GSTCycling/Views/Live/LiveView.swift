//
//  LiveView.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct LiveView: View {

    @State private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 24) {

                    Text("Live Center")
                        .font(AppTypography.largeTitle)
                        .foregroundStyle(AppColors.textPrimary)

                    Text("Follow the race as it happens.")
                        .font(AppTypography.body)
                        .foregroundStyle(AppColors.textSecondary)

                    LiveStageCard(viewModel: viewModel)
                    
                    BreakawayCard(gap: "+2:35")
                    
                    NextClimbCard()
                    
                    WeatherCard()
                    
                    StageMapCard()
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 16)
                .padding(.bottom, 32)
            }
            .background(AppColors.background)
            .navigationTitle("Live")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    LiveView()
}
