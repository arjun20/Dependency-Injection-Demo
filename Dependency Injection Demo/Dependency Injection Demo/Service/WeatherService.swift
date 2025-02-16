//
//  WeatherService.swift
//  Dependency Injection Demo
//
//  Created by Arjun Gautami on 16/02/25.
//

import Foundation
import UIKit

// MARK: - Service Protocol
protocol WeatherService {
    func fetchWeather() -> String
}

// MARK: - Service Implementation
class LiveWeatherService: WeatherService {
    func fetchWeather() -> String {
        return "Today's weather is Sunny, 25°C"
    }
}

class MockWeatherService: WeatherService {
    func fetchWeather() -> String {
        return "Simulated weather: Cloudy, 20°C"
    }
}


