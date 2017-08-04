//
//  ViewController.swift
//  opensesame
//
//  Created by Josh Boles on 7/30/17.
//  Copyright © 2017 Josh Boles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var garageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        if checkGarageStatus() == true {
            let image = UIImage(named: "garage-open") as UIImage?
            garageButton.setImage(image, for: .normal)
        } else {
            let image = UIImage(named: "garage-closed") as UIImage?
            garageButton.setImage(image, for: .normal)
        }
    }
    
    func checkGarageStatus() -> Bool {
        // TODO: Eventually make API call to Smarthings and return if garage is actually open or not.
        return false
    }
    
    func signalGarage() {
        var request = URLRequest(url: URL(string: "XXXXXXX")!)
        request.httpMethod = "GET"
        let session = URLSession.shared
        
        session.dataTask(with: request) {data, response, err in
            print("Entered the completionHandler")
        }.resume()
    }

    @IBAction func garageClicked(_ sender: Any) {
        signalGarage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

