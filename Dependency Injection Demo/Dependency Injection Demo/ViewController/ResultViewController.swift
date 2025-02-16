//
//  ResultViewController.swift
//  Dependency Injection Demo
//
//  Created by Arjun on 15/02/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    private var viewModel: WeatherViewModel!
    private let weatherLabel = UILabel()
    
    init(viewModel: WeatherViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        // Setup UI
        setupUI()
        displayWeather()
    }
    
    deinit {
        self.weatherLabel.text = "" 
        self.viewModel = nil
    }
    
    private func setupUI() {
        weatherLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherLabel.textAlignment = .center
        weatherLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        view.addSubview(weatherLabel)
        
        NSLayoutConstraint.activate([
            weatherLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weatherLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func displayWeather() {
        weatherLabel.text = viewModel.getWeatherReport()
    }
}
