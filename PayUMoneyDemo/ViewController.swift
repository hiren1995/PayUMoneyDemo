//
//  ViewController.swift
//  PayUMoneyDemo
//
//  Created by Apple on 20/07/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit
import PayUMoneyCoreSDK
import Pods_PayUMoneyDemo



class ViewController: UIViewController,UIWebViewDelegate{

    @IBOutlet var mywebview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        
    }
    
    
    @IBAction func PayumoneyTapped(_ sender: UIButton) {
        
        PayUServiceHelper.sharedManager().getPayment(self, "hiren1995@yahoo.com", "9638145530", "Hiren Kadam", "1.0", "9638145530", didComplete: { (dict, error) in
            if let error = error {
                print("Error")
                print(error.localizedDescription)
            }else {
                print("Success")
            }
        }) { (error) in
            print("Payment Process Breaked")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

