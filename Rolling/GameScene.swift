//
//  GameScene.swift
//  Rolling
//
//  Created by ajgr on 4/24/17.
//  Copyright © 2017 AJGR. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
	
	var edgeRect: CGRect?
	
	override func didMove(to view: SKView) {
		makeFrame()
		physicsBody = SKPhysicsBody(edgeLoopFrom: edgeRect!)
	}
		
	func makeFrame() {
		
		let shape = SKShapeNode()
		let path = CGMutablePath()
		edgeRect = self.frame
		path.addRect(edgeRect!)
		
		shape.path = path
		shape.strokeColor = SKColor.black
		shape.lineWidth = 8.0
		shape.zPosition = 2
		addChild(shape)
	}	
}


























