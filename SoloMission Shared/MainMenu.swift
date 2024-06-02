//
//  MainMenu.swift
//  SoloMission iOS
//
//  Created by utkarsh khajuria on 02/02/24.
//

import Foundation
import SpriteKit

class MainMenu: SKScene{
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        background.zPosition = 0
        self.addChild(background)
        
        let gameBy = SKLabelNode(fontNamed: "The Bold Font")
        gameBy.text = "Utkarsh's"
        gameBy.fontSize = 50
        gameBy.fontColor = SKColor.white
        gameBy.position = CGPoint(x: self.size.width * 0.5, y: self.size.height*0.78)
        gameBy.zPosition = 1
        self.addChild(gameBy)
        
        
        let gameName1 = SKLabelNode(fontNamed: "The Bold Font")
        gameName1.text = "Solo"
        gameName1.fontSize = 200
        gameName1.fontColor = SKColor.white
        gameName1.position = CGPoint(x: self.size.width * 0.5, y: self.size.height*0.7)
        gameName1.zPosition = 1
        self.addChild(gameName1)
        
        
        let gameName2 = SKLabelNode(fontNamed: "The Bold Font")
        gameName2.text = "Mission"
        gameName2.fontSize = 200
        gameName2.fontColor = SKColor.white
        gameName2.position = CGPoint(x: self.size.width * 0.5, y: self.size.height*0.625)
        gameName2.zPosition = 1
        self.addChild(gameName2)
        
        let gameStart = SKLabelNode(fontNamed: "The Bold Font")
        gameStart.text = "Sart Game"
        gameStart.fontSize = 150
        gameStart.fontColor = SKColor.white
        gameStart.position = CGPoint(x: self.size.width * 0.5, y: self.size.height*0.4)
        gameStart.zPosition = 1
        gameStart.name = "startButton"
        self.addChild(gameStart)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let pointOfTouch = touch.location(in: self)
            for nodeITapped in self.nodes(at: pointOfTouch) {
                
                if nodeITapped.name == "startButton" {
                    
                    let sceneToMoveTo = GameScene(size: self.size)
                    sceneToMoveTo.scaleMode = self.scaleMode
                    let myTransition = SKTransition.fade(withDuration: 0.5)
                    self.view!.presentScene(sceneToMoveTo, transition: myTransition)
                    
                    return
                }
                
            }
        }
    }
}
