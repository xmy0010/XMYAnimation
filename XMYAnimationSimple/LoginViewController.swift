//
//  LoginViewController.swift
//  XMYAnimationSimple
//
//  Created by T_yun on 15/12/26.
//  Copyright © 2015年 T_yun. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var bubble1: UIImageView!
    @IBOutlet weak var bubble2: UIImageView!
    @IBOutlet weak var bubble3: UIImageView!
    @IBOutlet weak var bubble4: UIImageView!
    @IBOutlet weak var bubble5: UIImageView!
    
    @IBOutlet weak var dot: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!

    @IBOutlet weak var login: UIButton!
    
    //Custom
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: .White)
    var loginPosition = CGPoint.zero
    let warningMessage = UIImageView(image: UIImage(named: "Warning"))
  
    override func viewDidLoad() {
        super.viewDidLoad()

        self.bubble1.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble2.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble3.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble4.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble5.transform = CGAffineTransformMakeScale(0, 0)
        
        self.logo.center.x -= self.view.bounds.width
        self.dot.center.x -= self.view.bounds.width / 2
        
        let userPaddingView = UIView(frame: CGRectMake(0, 0, 44, self.username.frame.height))
        self.username.leftView = userPaddingView
        self.username.leftViewMode = .Always
        let userImageView = UIImageView(image: UIImage(named: "User"))
        userImageView.frame.origin = CGPoint(x: 13, y: 10)
        self.username.addSubview(userImageView)
        
        let passwordPaddingView = UIView(frame: CGRectMake(0, 0, 44, self.username.frame.height))
        self.password.leftView = passwordPaddingView
        self.password.leftViewMode = .Always
        let passwordImageView = UIImageView(image: UIImage(named: "Key"))
        passwordImageView.frame.origin = CGPoint(x: 12, y: 9)
        self.password.addSubview(passwordImageView)
        
        self.username.center.x -= self.view.bounds.width
        self.password.center.x -= self.view.bounds.width
        
        self.loginPosition = self.login.center
        self.login.center.x += self.view.bounds.width
        
        self.view.addSubview(self.warningMessage)
        self.warningMessage.hidden = true
        self.warningMessage.center = self.loginPosition
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {
            self.bubble1.transform = CGAffineTransformMakeScale(1, 1)
            self.bubble4.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0.1, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {
            self.bubble2.transform = CGAffineTransformMakeScale(1, 1)
            self.bubble5.transform = CGAffineTransformMakeScale(1, 1)
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {
            
            self.bubble3.transform = CGAffineTransformMakeScale(1, 1)
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: [], animations: {
            
            self.logo.center.x += self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(5, delay: 0.4, usingSpringWithDamping: 0.1, initialSpringVelocity: 1, options: [], animations: {
            
            self.dot.center.x += self.view.bounds.width / 2
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.5, options: .CurveEaseInOut, animations: {
            
            self.username.center.x += self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.6, options: .CurveEaseInOut, animations: {
            
            self.password.center.x += self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.7, options: .CurveEaseOut, animations: {
            
            self.login.center.x -= self.view.bounds.width
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginTapped(sender: AnyObject) {
        
        self.login.addSubview(self.spinner)
        self.spinner.frame.origin = CGPointMake(12, 12)
        self.spinner.startAnimating()
        
        UIView.transitionWithView(self.warningMessage, duration: 0.3, options: .TransitionFlipFromBottom, animations: {
            
            self.warningMessage.hidden = true
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, animations: {
            self.login.center = self.loginPosition
        })
        self.login.center.x -= 30
        UIView.animateWithDuration(1.5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: [], animations: {
            
            self.login.center.x += 30
            }, completion: {_ in
                UIView.animateWithDuration(0.3, animations: {
                    self.login.center.y += 80
                    self.spinner.removeFromSuperview()
                    }, completion: { _ in
                        UIView.transitionWithView(self.warningMessage, duration: 0.3, options: [UIViewAnimationOptions.TransitionFlipFromTop, UIViewAnimationOptions.CurveEaseOut], animations: {
                            
                                self.warningMessage.hidden = false
                            }, completion: nil)
                        
                })
                
        })
    }

 

}
