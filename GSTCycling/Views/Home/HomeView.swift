//
//  HomeView.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 7.07.2026.
//
import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 24) {
                    heroHeader
                    liveStageCard
                    todaysStageCard
                    dashboardGrid
                    quickActionsSection
                }
                .padding(.horizontal, 20)
                .padding(.top, 16)
                .padding(.bottom, 32)
            }
            .background(AppColors.background)
            .navigationTitle("GST Cycling")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private var heroHeader: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Good Morning")
                .font(AppTypography.subheadline)
                .foregroundStyle(AppColors.textSecondary)
            
            Text("🚴 GST Cycling")
                .font(AppTypography.largeTitle)
                .foregroundStyle(AppColors.textPrimary)
            
            Text("Follow the world's greatest cycling races.")
                .font(AppTypography.body)
                .foregroundStyle(AppColors.textSecondary)
        }
    }
    
    private var liveStageCard: some View {
        VStack(alignment: .leading, spacing: 18) {
            HStack {
                Label("LIVE NOW", systemImage: "dot.radiowaves.left.and.right")
                    .font(AppTypography.caption.weight(.bold))
                    .foregroundStyle(.black)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 7)
                    .background(AppColors.live)
                    .clipShape(Capsule())
                
                Spacer()
                
                Text("\(viewModel.remainingDistance) left")
                    .font(AppTypography.caption)
                    .foregroundStyle(.white.opacity(0.85))
            }
            
            VStack(alignment: .leading, spacing: 6) {
                Text(viewModel.raceName)
                    .font(AppTypography.title)
                    .foregroundStyle(.white)
                
                Text("\(viewModel.stageName) · \(viewModel.startLocation) → \(viewModel.finishLocation)")
                    .font(AppTypography.subheadline)
                    .foregroundStyle(.white.opacity(0.82))
            }
            
            HStack(spacing: 14) {
                liveMetric(title: "Leader", value: "Breakaway")
                liveMetric(title: "Peloton", value: "+2'50\"")
                liveMetric(title: "Wind", value: viewModel.windSpeed)
            }
            
            Button {
                // Live screen navigation will be added in a later sprint.
            } label: {
                HStack {
                    Text("Follow Live")
                        .font(AppTypography.headline)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .foregroundStyle(.black)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            }
        }
        .padding(20)
        .background(AppColors.liveCardGradient)
        .clipShape(RoundedRectangle(cornerRadius: 28))
    }

    private var todaysStageCard: some View {
        VStack(alignment: .leading, spacing: 18) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("TODAY'S STAGE")
                        .font(AppTypography.caption.weight(.bold))
                        .foregroundStyle(AppColors.textSecondary)

                    Text(viewModel.stageName)
                        .font(AppTypography.title2)
                        .foregroundStyle(AppColors.textPrimary)
                }

                Spacer()

                Image(systemName: "flag.checkered")
                    .font(.title2)
                    .foregroundStyle(AppColors.primary)
                    .frame(width: 48, height: 48)
                    .background(AppColors.secondaryBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }

            HStack(spacing: 12) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(viewModel.startLocation)
                        .font(AppTypography.headline)
                        .foregroundStyle(AppColors.textPrimary)

                    Text("Start")
                        .font(AppTypography.caption)
                        .foregroundStyle(AppColors.textSecondary)
                }

                Image(systemName: "arrow.right")
                    .font(AppTypography.subheadline.weight(.bold))
                    .foregroundStyle(AppColors.textSecondary)

                VStack(alignment: .leading, spacing: 4) {
                    Text(viewModel.finishLocation)
                        .font(AppTypography.headline)
                        .foregroundStyle(AppColors.textPrimary)

                    Text("Finish")
                        .font(AppTypography.caption)
                        .foregroundStyle(AppColors.textSecondary)
                }

                Spacer()
            }

            Divider()

            HStack(spacing: 12) {
                stageMetric(title: "Distance", value: viewModel.distance)
                stageMetric(title: "Type", value: viewModel.stageType)
                stageMetric(title: "Start", value: viewModel.startTime)
            }
        }
        .padding(20)
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
    
    private var dashboardGrid: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
            dashboardCard(icon: "calendar", title: "Today's Race", value: "3 events")
            dashboardCard(icon: "cloud.sun", title: "Weather", value: "30°C")
            dashboardCard(icon: "star", title: "Favorites", value: "8 riders")
            dashboardCard(icon: "trophy", title: "Standings", value: "Updated")
        }
    }
    
    private var quickActionsSection: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Quick Actions")
                .font(AppTypography.title3)
                .foregroundStyle(AppColors.textPrimary)
            
            VStack(spacing: 12) {
                quickAction(icon: "map", title: "Stage Map", subtitle: "Route, climbs and sprint points")
                quickAction(icon: "chart.xyaxis.line", title: "Stage Profile", subtitle: "Elevation and gradients")
                quickAction(icon: "person.3", title: "Riders", subtitle: "Teams, countries and favourites")
            }
        }
    }
    
    private func liveMetric(title: String, value: String) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(AppTypography.caption)
                .foregroundStyle(.white.opacity(0.7))
            
            Text(value)
                .font(AppTypography.subheadline.weight(.semibold))
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private func stageMetric(title: String, value: String) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(AppTypography.caption)
                .foregroundStyle(AppColors.textSecondary)

            Text(value)
                .font(AppTypography.subheadline.weight(.semibold))
                .foregroundStyle(AppColors.textPrimary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    private func dashboardCard(icon: String, title: String, value: String) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundStyle(AppColors.primary)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(AppTypography.subheadline)
                    .foregroundStyle(AppColors.textSecondary)
                
                Text(value)
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textPrimary)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
    
    private func quickAction(icon: String, title: String, subtitle: String) -> some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(AppColors.primary)
                .frame(width: 44, height: 44)
                .background(AppColors.secondaryBackground)
                .clipShape(RoundedRectangle(cornerRadius: 14))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textPrimary)
                
                Text(subtitle)
                    .font(AppTypography.subheadline)
                    .foregroundStyle(AppColors.textSecondary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(AppTypography.caption)
                .foregroundStyle(AppColors.textSecondary)
        }
        .padding()
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    HomeView()
}
