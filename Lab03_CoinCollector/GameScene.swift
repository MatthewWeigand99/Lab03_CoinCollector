//
//  GameScene.swift
//  Lab03_CoinCollector
//
//  Created by Matthew Weigand on 11/1/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        let bg = SKSpriteNode(imageNamed: "background")
        bg.anchorPoint = CGPoint(x: 0, y: 0)
        bg.position = CGPoint(x: 10, y: 330)
        bg.zPosition = Layer.bg.rawValue
        //addChild(bg)
        
        let fg = SKSpriteNode(imageNamed: "foreground")
        fg.anchorPoint = CGPoint(x: 0, y: 0)
        fg.position = CGPoint(x: 15, y: 158)
        fg.zPosition = Layer.fg.rawValue
        //addChild(fg)
        
        let p = Player()
        p.position = CGPoint(x: size.width/2, y: fg.frame.maxY)
        addChild(p)
    }
}
