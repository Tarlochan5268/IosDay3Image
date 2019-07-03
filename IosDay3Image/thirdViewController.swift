//
//  thirdViewController.swift
//  IosDay3Image
//
//  Created by admin on 2019-07-02.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.hidesBarsOnTap = true
        navigationController?.hidesBarsWhenKeyboardAppears = true
        goback()
        
    }
    
    func goback()
    {
        //navigationController?.navigationBar.backItem?.hidesBackButton = true
        // Do any additional setup after loading the view.
        //navigationController?.navigationItem.hidesBackButton = true // works
        self.navigationItem.hidesBackButton = true
        
        let buttonHome = UIBarButtonItem(title: "Main", style: UIBarButtonItem.Style.plain, target: self, action: #selector(thirdViewController.goToHome))
        
        self.navigationItem.leftBarButtonItem = buttonHome
    }
    
    @objc func goToHome()
    {
        //self.navigationController?.popToViewController((navigationController?.viewControllers[0])!, animated: true)
         navigationController?.popToRootViewController(animated: true)  //works to go direct to root
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
