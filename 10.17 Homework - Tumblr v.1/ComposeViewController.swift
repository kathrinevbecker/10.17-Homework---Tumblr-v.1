//
//  ComposeViewController.swift
//  10.17 Homework - Tumblr v.1
//
//  Created by Becker, Kathrine V on 10/16/16.
//  Copyright © 2016 Becker, Kathrine V. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    
    var buttons: [UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons = [textButton, quoteButton, linkButton, chatButton, videoButton, photoButton]
        
        //initialY = textButton.frame.origin.y

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // my original way of animating the icons from below the screen to their correct positions in the middle of the view:
    //override func viewWillAppear(_ animated: Bool) {
   // UIButton.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
   // self.textButton.center.y = self.textButton.center.y - 550}, completion: nil)
//}

    override func viewWillAppear(_ animated: Bool) {
        for i in buttons {
            i.center.y = view.frame.size.height
            i.alpha = 0
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // TEXT BUTTON
        UIButton.animate(withDuration: 0.3, delay: 0, options: [.curveEaseOut], animations: {
            self.textButton.center.y = 200
            self.textButton.alpha = 1
            }, completion: nil)
        
        // PHOTO BUTTON
        UIButton.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.photoButton.center.y = 200
            self.photoButton.alpha = 1
            }, completion: nil)

        // QUOTE BUTTON
        UIButton.animate(withDuration: 0.4, delay: 0, options: .curveEaseOut, animations: {
            self.quoteButton.center.y = 200
            self.quoteButton.alpha = 1
            }, completion: nil)

        // LINK BUTTON
        UIButton.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
            self.linkButton.center.y = 350
            self.linkButton.alpha = 1
            }, completion: nil)
        
        // CHAT BUTTON
        UIButton.animate(withDuration: 0.7, delay: 0, options: .curveEaseOut, animations: {
            self.chatButton.center.y = 350
            self.chatButton.alpha = 1
            }, completion: nil)

        // VIDEO BUTTON
        UIButton.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.videoButton.center.y = 350
            self.videoButton.alpha = 1
            }, completion: nil)
    }

    @IBAction func didPressNevermind(_ sender: AnyObject) {
        // TEXT
        UIButton.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.textButton.center.y = self.textButton.center.y - 550
            self.textButton.alpha = 0
            }, completion: nil)
        // PHOTO
        UIButton.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
            self.photoButton.center.y = self.photoButton.center.y - 550
            self.photoButton.alpha = 0
            }, completion: nil)
        // QUOTE
        UIButton.animate(withDuration: 0.4, delay: 0, options: .curveEaseOut, animations: {
            self.quoteButton.center.y = self.quoteButton.center.y - 550
            self.quoteButton.alpha = 0
            }, completion: nil)
        // LINK
        UIButton.animate(withDuration: 0.4, delay: 0, options: .curveEaseOut, animations: {
            self.linkButton.center.y = self.linkButton.center.y - 550
            self.linkButton.alpha = 0
            }, completion: nil)
        // CHAT
        UIButton.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
            self.chatButton.center.y = self.chatButton.center.y - 550
            self.chatButton.alpha = 0
            }, completion: nil)
        // VIDEO
        UIButton.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.videoButton.center.y = self.videoButton.center.y - 550
            self.videoButton.alpha = 0
            }, completion: nil)
        // DISMISS
        delay(0.3) {
        self.dismiss(animated: true, completion: nil)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
