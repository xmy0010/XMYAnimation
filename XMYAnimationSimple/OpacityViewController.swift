//
//  OpacityViewController.swift
//  XMYAnimationSimple
//
//  Created by T_yun on 15/12/24.
//  Copyright © 2015年 T_yun. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(1, animations: {
        
            self.blueSquare.alpha = 0.1
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
