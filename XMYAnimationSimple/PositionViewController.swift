//
//  PositionViewController.swift
//  XMYAnimationSimple
//
//  Created by T_yun on 15/12/23.
//  Copyright © 2015年 T_yun. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var redView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, animations: {
            
            self.blueView.center.x = self.view.bounds.width - self.blueView.center.x
            
        })
        
        
        UIView.animateWithDuration(1, delay: 0.5, options: .TransitionNone, animations: {
            
            self.greenView.center.y = self.view.bounds.height - self.greenView.center.y
            
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 1, options: .TransitionNone, animations: {
          
            
            self.redView.center.x = self.view.bounds.width - self.redView.center.x
            self.redView.center.y = self.view.bounds.height - self.redView.center.y
            
            }, completion: nil)
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
