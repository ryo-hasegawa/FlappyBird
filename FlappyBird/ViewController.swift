//
//  ViewController.swift
//  FlappyBird
//
//  Created by HaseMac on 2018/08/03.
//  Copyright © 2018年 ryou.hasegawa. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // SKViewに型を変換する
        let skView = self.view as! SKView
        // FPSを表示する
        skView.showsFPS = true
        // ノードの数を表示する
        skView.showsNodeCount = true
        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size)//GameSenceクラスを使用する
        // ビューにシーンを表示する
        skView.presentScene(scene)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ステータスバーを消す --- ここから ---
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    } // --- ここまで追加 ---
}

