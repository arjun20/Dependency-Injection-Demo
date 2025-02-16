//
//  WeatherViewModel.swift
//  Dependency Injection Demo
//
//  Created by Arjun Gautami on 16/02/25.
//

import Foundation

// MARK: - ViewModel with Dependency Injection
class WeatherViewModel {
    private let service: WeatherService
    
    init(service: WeatherService) {
        self.service = service
    }
    
    func getWeatherReport() -> String {
        return service.fetchWeather()
    }
}
