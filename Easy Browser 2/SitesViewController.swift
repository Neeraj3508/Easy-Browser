//
//  SitesViewController.swift
//  Easy Browser 2
//
//  Created by Neeraj Gupta on 14/09/20.
//  Copyright © 2020 Neeraj Gupta. All rights reserved.
//

import UIKit

class SitesViewController: UITableViewController {
    var websites = ["apple.com" , "google.com", "youtube.com", "amazon.in", "flipkart.com"]
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Easy browser"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count;
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cells", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = (storyboard?.instantiateViewController(identifier: "Detail")) as? ViewController {
            vc.selectedWebsite = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
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
