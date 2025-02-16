//
//  ViewController.swift
//  Dependency Injection Demo
//
//  Created by Arjun on 15/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func liveButtonAction(_ sender: UIButton) {
        let viewModel = WeatherViewModel(service: LiveWeatherService())
        let detailVC = ResultViewController(viewModel: viewModel)
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    @IBAction func mockButtonAction(_ sender: UIButton) {
        let viewModel = WeatherViewModel(service: MockWeatherService())
        let detailVC = ResultViewController(viewModel: viewModel)
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

