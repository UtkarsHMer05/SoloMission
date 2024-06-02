//
//  GameViewController.swift
//  SoloMission iOS
//
//  Created by utkarsh khajuria on 01/02/24.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class GameViewController: UIViewController {
    
    var backingAudio = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let filePath = Bundle.main.path(forResource: "battle", ofType: "mp3")
        let audioNSURL = NSURL(fileURLWithPath: filePath!)
        do { backingAudio = try AVAudioPlayer(contentsOf: audioNSURL as URL) }
         catch { return print("Cannot Find The Audio") }

       
         backingAudio.numberOfLoops = -1
         backingAudio.volume = 0.5
         backingAudio.play()

        
        
        
        let scene = MainMenu(size: CGSize(width: 1536, height: 2048))

        // Present the scene
        let skView = self.view as! SKView
        skView.presentScene(scene)
        
        skView.ignoresSiblingOrder = true
        skView.showsFPS = true
        skView.showsNodeCount = false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
