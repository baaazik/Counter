//
//  ViewController.swift
//  Counter
//
//  Created by Анжелика Забазнова on 03.03.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    private var count: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func incrementPress(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: \(count)"
    }
    
}

