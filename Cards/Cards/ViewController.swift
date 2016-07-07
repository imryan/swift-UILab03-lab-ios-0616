//
//  ViewController.swift
//  Cards
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var suitLabels: [UILabel]!
    @IBOutlet weak var rankLabel: UILabel!

    @IBAction func selectedCard(sender: UIButton) {
        let title = sender.titleLabel!.text!
        
        for label: UILabel in suitLabels {
            label.text = "\(title[title.startIndex])"
        }
        
        rankLabel.text = "\(title.substringFromIndex(title.startIndex.advancedBy(1)))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
