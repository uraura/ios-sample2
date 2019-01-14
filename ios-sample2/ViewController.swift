//
//  ViewController.swift
//  ios-sample2
//
//  Created by uraura on 2019/01/14.
//  Copyright © 2019 uraura. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!

    let data = ["国語", "算数", "理科", "社会", "英語"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ table: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ table: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // tableCell の ID で UITableViewCell のインスタンスを生成
        let cell = table.dequeueReusableCell(withIdentifier: "tableCell",
                                             for: indexPath)
        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = cell.viewWithTag(2) as! UILabel
        label1.text = String(describing: data[indexPath.row])

        return cell
    }

    func tableView(_ table: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }

    var selected: String!

    func tableView(_ table: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected = data[indexPath.row]
        performSegue(withIdentifier: "toPlayView",sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "toPlayView") {
            let playView: PlayViewController = (segue.destination as? PlayViewController)!
            playView.selected = selected
        }
    }
}

