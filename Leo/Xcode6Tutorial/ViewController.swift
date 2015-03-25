//
//  ViewController.swift
//  Xcode6Tutorial
//
//  Created by Leonardo Rubio 1 on 3/24/15.
//  Copyright (c) 2015 FantasyName. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    

    //@IBOutlet weak var setaDireita: UIButton!
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var PlayerScore: UILabel!
    @IBOutlet weak var EnemyScore: UILabel!
    
    @IBOutlet weak var viewFinal: UIView!
    
    var timesMenu:[String] = ["Cor", "Sp", "San", "Pal"]
    
    var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewFinal.hidden = true
        //self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
    }

    var playerScoreTotal = 0;
    var enemyScoreTotal = 0;
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        
        // randomize um numero para o firstImageView
        var firstRandomNumber:Int = Int(arc4random_uniform(13))
        
        //Controi uma string com numero randomico
        //var firstCardString:String = String(format: "Card%i", firstRandomNumber)
        
        //Acessa as cartas por array
        var firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        // Seta a firstCardView com o numero correspondente
        self.firstCardImageView.image = UIImage (named: firstCardString)
        
        
        
        
        //randomize a number for secondCardView
        var secondRandomNumber:Int = Int (arc4random_uniform(13))
        
        //constroi string com random number pra secondCardView
        //var secondCardString:String = String(format: "Card%i", secondRandomNumber)
        
        //acessa cartas por array
        var secondCardString:String = self.cardNamesArray [secondRandomNumber]
        
        // Seta secondCardView com numero correspondente
        self.secondCardImageView.image = UIImage (named: secondCardString)
        
        //determina a carta maior
        if firstRandomNumber > secondRandomNumber {
            playerScoreTotal += 1
            self.PlayerScore.text = String(playerScoreTotal)
            
        }
        else if firstRandomNumber == secondRandomNumber {
        
        }
        else {
            enemyScoreTotal += 1
            self.EnemyScore.text = String (enemyScoreTotal)
        }
        if(enemyScoreTotal == 10 || playerScoreTotal == 10)
        {
            NSLog("Teste")
            viewFinal.hidden = false

        }
    }

}







