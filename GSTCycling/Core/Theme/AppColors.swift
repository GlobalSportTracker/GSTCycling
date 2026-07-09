import SwiftUI

enum AppColors {

    // MARK: - Brand

    static let tourYellow = Color(red: 1.00, green: 0.82, blue: 0.10)
    static let racingGold = Color(red: 0.95, green: 0.65, blue: 0.05)
    static let primary = tourYellow
    static let accent = Color(red: 0.18, green: 0.80, blue: 0.44)

    // MARK: - Backgrounds

    static let background = Color(.systemBackground)
    static let secondaryBackground = Color(.secondarySystemBackground)
    static let cardBackground = Color(.tertiarySystemBackground)
    static let elevatedCardBackground = Color(.secondarySystemGroupedBackground)

    // MARK: - Text

    static let textPrimary = Color.primary
    static let textSecondary = Color.secondary
    static let textOnDark = Color.white

    // MARK: - Status

    static let live = tourYellow
    static let success = Color.green
    static let warning = Color.orange
    static let error = Color.red
    static let separator = Color(.separator)

    // MARK: - Cycling Classifications

    static let generalClassification = tourYellow
    static let sprintClassification = Color.green
    static let mountainClassification = Color.red
    static let youthClassification = Color.white

    // MARK: - Gradients

    static let liveCardGradient = LinearGradient(
        colors: [
            Color.black,
            Color(red: 0.16, green: 0.16, blue: 0.12),
            Color(red: 0.35, green: 0.28, blue: 0.04)
        ],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
}
