//
//  ViewController.swift
//  Counter
//
//  Created by Анжелика Забазнова on 03.03.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var logTextView: UITextView!
    
    private var count: Int = 0 {
        didSet {
            counterLabel.text = "Значение счётчика: \(count)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func incrementPress(_ sender: Any) {
        count += 1
    }
    
    @IBAction func decrementPress(_ sender: Any) {
        if count > 0 {
            count -= 1
        }
    }
    
    @IBAction func resetPress(_ sender: Any) {
        if count != 0 {
            count = 0
        }
    }
}

