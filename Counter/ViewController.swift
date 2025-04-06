//
//  ViewController.swift
//  Counter
//
//  Created by Анжелика Забазнова on 03.03.2025.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var logTextView: UITextView!
    
    let dateFormatter = DateFormatter()
    
    private var count: Int = 0 {
        didSet {
            counterLabel.text = "Значение счётчика: \(count)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
    }
    
    func doLog(message: String) {
        let date = Date()
        let dateStr = dateFormatter.string(from: date)
        logTextView.text += "\n[\(dateStr)]: \(message)"
    }

    @IBAction func incrementPress(_ sender: Any) {
        count += 1
        doLog(message: "значение изменено на +1")
    }
    
    @IBAction func decrementPress(_ sender: Any) {
        if count > 0 {
            count -= 1
            doLog(message: "значение изменено на -1")
        } else {
            doLog(message: "попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction func resetPress(_ sender: Any) {
        if count != 0 {
            count = 0
            doLog(message: "значение сброшено")
        }
    }
}

