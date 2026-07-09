//
//  Weather.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//


import Foundation

/// Represents weather conditions for a cycling stage or race location.
/// This model is designed for live stage cards, stage details and future weather API mapping.
struct Weather: Identifiable, Hashable, Codable {
    let id = UUID()

    let temperature: Double
    let feelsLikeTemperature: Double?
    let condition: WeatherCondition
    let windSpeed: Double
    let windDirection: WindDirection
    let precipitationProbability: Double?
    let humidity: Double?
    let uvIndex: Double?
}

enum WeatherCondition: String, CaseIterable, Hashable, Codable {
    case sunny = "Sunny"
    case partlyCloudy = "Partly Cloudy"
    case cloudy = "Cloudy"
    case rain = "Rain"
    case storm = "Storm"
    case fog = "Fog"
    case snow = "Snow"
    case windy = "Windy"
}

enum WindDirection: String, CaseIterable, Hashable, Codable {
    case north = "N"
    case northeast = "NE"
    case east = "E"
    case southeast = "SE"
    case south = "S"
    case southwest = "SW"
    case west = "W"
    case northwest = "NW"
}
