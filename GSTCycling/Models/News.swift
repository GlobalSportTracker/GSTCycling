//
//  News.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import Foundation

/// Represents a cycling news article.
struct News: Identifiable, Hashable, Codable {

    let id = UUID()

    let title: String

    let summary: String

    let publishedAt: Date

    let source: String

    let imageURL: URL?

    let articleURL: URL?

    let category: NewsCategory
}

enum NewsCategory: String, CaseIterable, Hashable, Codable {

    case race = "Race"

    case rider = "Rider"

    case team = "Team"

    case transfer = "Transfer"

    case injury = "Injury"

    case interview = "Interview"

    case technology = "Technology"

    case general = "General"
}
