//
//  ViewController.swift
//  HelloWorldPart3
//
//  Created by Игнат Гончаров on 19.05.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }
    
    @IBAction func greetingButtonDidTapped() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
        )
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration{
        var buttonConfiguraion = UIButton.Configuration.filled()
        buttonConfiguraion.title = title
        buttonConfiguraion.baseBackgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        buttonConfiguraion.cornerStyle = .large
        buttonConfiguraion.buttonSize = .large
        buttonConfiguraion.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguraion
    }
}

