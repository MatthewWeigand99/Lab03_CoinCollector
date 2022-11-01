//
//  Player.swift
//  Lab03_CoinCollector
//
//  Created by Matthew Weigand on 11/1/22.
//

import Foundation
import SpriteKit

class Player: SKSpriteNode{
    //MARK: = Properties
    
    //MARK: - Init
    init(){
        let texture = SKTexture(imageNamed: "p_test")
        
        super.init(texture: texture, color: .clear, size: texture.size())
        
        self.name = "player"
        self.setScale(1.0)
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.zPosition = Layer.p.rawValue
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
