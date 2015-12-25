//
//  RotationViewController.swift
//  XMYAnimationSimple
//
//  Created by T_yun on 15/12/25.
//  Copyright © 2015年 T_yun. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var wheel: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.spin()
    }
    
    func spin() {
        UIView.animateWithDuration(1, delay: 0, options: .CurveLinear, animations: {
            
            self.wheel.transform = CGAffineTransformRotate(self.wheel.transform, CGFloat(M_PI))
            }) { (finished) -> Void in
                self.spin()
        }
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
