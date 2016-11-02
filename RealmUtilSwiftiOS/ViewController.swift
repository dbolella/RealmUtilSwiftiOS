//
//  ViewController.swift
//  RealmUtilSwiftiOS
//
//  Created by Daniel Bolella on 10/25/16.
//  Copyright © 2016 Daniel Bolella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sampleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profile = ["name":"Danny","age":27] as [String : Any]
        
        let rP :realmPerson = realmPerson()
        rP.add(from: profile)
        let result = rP.getFirstPerson()
        sampleLabel.text = "Success!  \(result.name) is \(result.age) years old"
        
        let util : realmUtil = realmUtil()
        util.printRealm()
    }


}

