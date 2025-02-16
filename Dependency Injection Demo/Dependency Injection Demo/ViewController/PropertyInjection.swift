//
//  PropertyInjection.swift
//  Dependency Injection Demo
//
//  Created by Arjun on 16/02/25.
//
// Property Injection

import UIKit

class PropertyInjectionViewModel {
    var service: WeatherService?

    func getData() -> String {
        return service?.fetchWeather() ?? "No Data"
    }
}

class PropertyInjectionController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewModel = PropertyInjectionViewModel()
        viewModel.service = MockWeatherService()
    }
}
