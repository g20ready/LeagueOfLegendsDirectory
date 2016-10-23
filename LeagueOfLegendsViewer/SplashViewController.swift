//
//  ViewController.swift
//  LeagueOfLegendsViewer
//
//  Created by Marsel Xhaxho on 22/10/2016.
//  Copyright © 2016 max@dev. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        ApiManager.shared.fetchChampions { (champions, err) in
            if let error = err {
                print("fetchChampions Error \(error.localizedDescription)")
                return
            }
            print("fetched \(champions?.count) champions")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

