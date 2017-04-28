//
//  ViewController.swift
//  Rolling
//
//  Created by ajgr on 4/24/17.
//  Copyright © 2017 AJGR. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
	
	@IBOutlet weak var sceneView: SKView!
	var scene: GameScene?
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		sceneView.ignoresSiblingOrder = true
		sceneView.showsFPS = true
		sceneView.showsNodeCount = true
		loadLevel("GameScene")
	}
	
	//MARK: Utility
	func loadLevel(_ levelName: String) {
		
		if let scene = SKScene(fileNamed: levelName) as? GameScene {
			scene.scaleMode = .aspectFill
			sceneView.presentScene(scene)
		}
	}
	
	//MARK: - Actions
	@IBAction func loadLevelOne(_ sender: UIButton) {
		loadLevel("GameScene")
	}
	@IBAction func loadLevelTwo(_ sender: UIButton) {
		loadLevel("GameScene2")
	}

}

