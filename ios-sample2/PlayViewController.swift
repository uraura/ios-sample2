//
//  PlayViewController.swift
//  ios-sample2
//
//  Created by uraura on 2019/01/14.
//  Copyright © 2019 uraura. All rights reserved.
//

import Foundation
import UIKit

class PlayViewController: UIViewController{

    @IBOutlet var label: UILabel!
    var selected: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = selected
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
