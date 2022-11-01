//
//  GameViewController.swift
//  Lab03_CoinCollector
//
//  Created by Matthew Weigand on 11/1/22.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView?{
            let scene = GameScene(size: CGSize(width: 1336, height: 1024))
            
            scene.scaleMode = .aspectFill
            
            scene.backgroundColor = UIColor(red: 105/255, green: 157/255, blue: 181/255, alpha: 1.0)
            
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = false
            view.showsPhysics = false
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
