//
//  RecordViewController.swift
//  ios-sample2
//
//  Created by uraura on 2019/01/14.
//  Copyright © 2019 uraura. All rights reserved.
//

import UIKit

protocol RecordViewControllerDelegate {
  func closeBtnDidPush(sender: RecordViewController)
}

class RecordViewController: UIViewController {

    var delegate: RecordViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnDidPush(sender: UIBarButtonItem) {
        self.delegate?.closeBtnDidPush(sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
