//
//  ViewController.swift
//  CatchTheMavisGame
//
//  Created by Ayça Eren on 12.06.2024.
//

import UIKit

class ViewController: UIViewController {

    var score = 0
    var timer = Timer()
    var counter = 0
    var mavisArray = [UIImageView]()
    var hideTimer = Timer()
    var highScore = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var mavis1: UIImageView!
    @IBOutlet weak var mavis2: UIImageView!
    @IBOutlet weak var mavis3: UIImageView!
    @IBOutlet weak var mavis4: UIImageView!
    @IBOutlet weak var mavis5: UIImageView!
    @IBOutlet weak var mavis6: UIImageView!
    @IBOutlet weak var mavis7: UIImageView!
    @IBOutlet weak var mavis8: UIImageView!
    @IBOutlet weak var mavis9: UIImageView!
    @IBOutlet weak var highestScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(score)"
        
        let storedHighScore = UserDefaults.standard.object(forKey: "highscore")
        if storedHighScore == nil {
            highScore = 0
            highestScoreLabel.text = "Highscore: \(self.highScore)"
        }
        if let newScore = storedHighScore as? Int {
            highScore = newScore
            highestScoreLabel.text = "Highscore: \(self.highScore)"
        }
        
        mavis1.isUserInteractionEnabled = true
        mavis2.isUserInteractionEnabled = true
        mavis3.isUserInteractionEnabled = true
        mavis4.isUserInteractionEnabled = true
        mavis5.isUserInteractionEnabled = true
        mavis6.isUserInteractionEnabled = true
        mavis7.isUserInteractionEnabled = true
        mavis8.isUserInteractionEnabled = true
        mavis9.isUserInteractionEnabled = true
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        mavis1.addGestureRecognizer(recognizer1)
        mavis2.addGestureRecognizer(recognizer2)
        mavis3.addGestureRecognizer(recognizer3)
        mavis4.addGestureRecognizer(recognizer4)
        mavis5.addGestureRecognizer(recognizer5)
        mavis6.addGestureRecognizer(recognizer6)
        mavis7.addGestureRecognizer(recognizer7)
        mavis8.addGestureRecognizer(recognizer8)
        mavis9.addGestureRecognizer(recognizer9)
        
        mavisArray = [mavis1,mavis2,mavis3,mavis4,mavis5,mavis6,mavis7,mavis8,mavis9]
        
        counter = 10
        timeLabel.text = String(counter)

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
        
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideMavis), userInfo: nil, repeats: true)
    }

    @objc func hideMavis(){
        for mavis in mavisArray{
            mavis.isHidden = true
        }
        let random = Int(arc4random_uniform(UInt32(mavisArray.count-1)))
        mavisArray[random].isHidden = false
    }
    
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"
        print("Score increased to \(score)")
    }
    
    @objc func countdown(){
        counter -= 1
        timeLabel.text = String(counter)
        if counter == 0{
            timer.invalidate() //timer durdurulur
            hideTimer.invalidate()
            
            for mavis in mavisArray{ //mavislere süre sonu basılmasını durdurur.
                mavis.isHidden = true
            }
            
            if self.score > self.highScore{
                self.highScore = self.score
                highestScoreLabel.text = "Highscore: \(self.highScore)"
                UserDefaults.standard.set(self.highScore, forKey: "highscore")
            }
            
            let alert = UIAlertController(title: "Time's up", message: "do you want to play again", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.cancel, handler: nil)
            let replayButton = UIAlertAction(title: "replay", style: UIAlertAction.Style.default) { UIAlertAction in
                self.score = 0
                self.scoreLabel.text = "Score: \(self.score)"
                self.counter = 10
                self.timeLabel.text = String(self.counter)
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countdown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.hideMavis), userInfo: nil, repeats: true)
                
            }
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

