//
//  RaceView.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct RaceView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Image(systemName: "flag.checkered")
                    .font(.system(size: 60))
                    .foregroundStyle(AppColors.primary)

                Text("Race Center")
                    .font(AppTypography.largeTitle)
                    .foregroundStyle(AppColors.textPrimary)

                Text("Race information, results and classifications will appear here.")
                    .font(AppTypography.body)
                    .foregroundStyle(AppColors.textSecondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AppColors.background)
            .navigationTitle("Race")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RaceView()
}
