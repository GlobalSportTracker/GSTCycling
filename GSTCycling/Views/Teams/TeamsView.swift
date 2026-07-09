import SwiftUI

struct TeamsView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Image(systemName: "person.3.fill")
                    .font(.system(size: 60))
                    .foregroundStyle(AppColors.primary)

                Text("Teams")
                    .font(AppTypography.largeTitle)
                    .foregroundStyle(AppColors.textPrimary)

                Text("Team profiles, rosters and season statistics will appear here.")
                    .font(AppTypography.body)
                    .foregroundStyle(AppColors.textSecondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AppColors.background)
            .navigationTitle("Teams")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    TeamsView()
}
