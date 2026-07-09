//
//  RidersView.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct RidersView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Image(systemName: "figure.outdoor.cycle")
                    .font(.system(size: 60))
                    .foregroundStyle(AppColors.primary)

                Text("Riders")
                    .font(AppTypography.largeTitle)
                    .foregroundStyle(AppColors.textPrimary)

                Text("Rider profiles, rankings and statistics will appear here.")
                    .font(AppTypography.body)
                    .foregroundStyle(AppColors.textSecondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AppColors.background)
            .navigationTitle("Riders")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    RidersView()
}
