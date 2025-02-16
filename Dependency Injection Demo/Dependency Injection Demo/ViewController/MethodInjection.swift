//
//  MethodInjection.swift
//  Dependency Injection Demo
//
//  Created by Arjun Gautami on 16/02/25.
//

import UIKit

class MethodInjectionViewModel {
    func getData(service: WeatherService) -> String {
        return service.fetchWeather()
    }
}


class MethodInjectionController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewModel = MethodInjectionViewModel()
        print(viewModel.getData(service: MockWeatherService()))
    }
}
