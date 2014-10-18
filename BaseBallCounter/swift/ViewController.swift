//
//  ViewController.swift
//  BaseBallCounter
//
//  Created by tsukasa-chibana on 2014/10/07.
//  Copyright (c) 2014年 bananaApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let MAX_OUT = 3
    let MAX_STRIKE = 3
    let MAX_BALL = 4

    var ballCount = 0
    var strikeCount = 0
    var outCount = 0
    
    // MARK: view bind
    
    @IBOutlet weak var BallCountLabel: UILabel!
    @IBOutlet weak var StrikeCountLabel: UILabel!
    @IBOutlet weak var OutCountLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // -------------------------------------
    // MARK: view events
    // -------------------------------------
    
    @IBAction func onBallIncrement(sender: UIButton) {
        if (self.ballCount < MAX_BALL) {
            self.ballCount++
            self.updateBallCount()
        }
    }

    @IBAction func onStrikeIncrement(sender: AnyObject) {
        if (self.strikeCount < MAX_STRIKE) {
            self.strikeCount++
            self.updateStrikeCount()
        }
    }
    
    @IBAction func onOutIncrement(sender: AnyObject) {
        if (self.outCount < MAX_OUT) {
            self.outCount++
            self.updateOutCount()
        }
    }
    @IBAction func onBallDecrement(sender: AnyObject) {
        if (self.ballCount > 0) {
            self.ballCount--
            self.updateBallCount()
        }
    }
    
    @IBAction func onStrikeDecrement(sender: AnyObject) {
        if (self.strikeCount > 0) {
            self.strikeCount--
            self.updateStrikeCount()
        }
    }
    @IBAction func onOutDecrement(sender: AnyObject) {
        if (self.outCount > 0) {
            self.outCount--
            self.updateOutCount()
        }
    }
    
    @IBAction func onNextButter(sender: AnyObject) {
        self.ballCount = 0;
        self.strikeCount = 0

        if (MAX_OUT == self.outCount) {
            self.outCount = 0
        }
        self.updateAll()
    }
    // -------------------------------------
    // MARK: private method
    // -------------------------------------
    
    private func updateAll() {
        self.updateBallCount()
        self.updateStrikeCount()
        self.updateOutCount()
    }
    
    private func updateBallCount() {
        self.BallCountLabel.text = "\(self.ballCount)"
    }
    
    private func updateStrikeCount() {
        self.StrikeCountLabel.text = "\(self.strikeCount)"
    }
    
    private func updateOutCount() {
        self.OutCountLabel.text = "\(self.outCount)"
    }
}

