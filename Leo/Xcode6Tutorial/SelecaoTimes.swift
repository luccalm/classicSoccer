//
//  SelecaoTimes.swift
//  Xcode6Tutorial
//
//  Created by Leonardo Rubio 1 on 3/25/15.
//  Copyright (c) 2015 FantasyName. All rights reserved.
//

import UIKit
import AVFoundation


struct selecionarTime {
    static var timeEscolha = 0
    static var playerScoreTotal = 0;
    static var enemyScoreTotal = 0;
    static var forcaCarta = 0;
    static var nomeJogador = ""
    static var timeAi = 0
    static var musica = 0
    static var cardNamesArray = []
}




class SelecaoTimes: UIViewController {
    @IBOutlet weak var ciqueDireita: UIButton!
    @IBOutlet weak var timesAEscolher: UIImageView!
    @IBOutlet weak var nomeTimes: UILabel!
    
    @IBOutlet weak var buttonGoSound: UIButton!
    //*****   SOM   *****
    var buttonAudioURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("selectionSound", ofType: "wav")!)
    var buttonAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //*****   SOM   *****
        buttonAudioPlayer = AVAudioPlayer(contentsOfURL: buttonAudioURL, error: nil)
        
        NSLog("DidLoad Selecao")
         selecionarTime.timeEscolha = 0
         selecionarTime.playerScoreTotal = 0;
         selecionarTime.enemyScoreTotal = 0;
         selecionarTime.forcaCarta = 0;
         selecionarTime.nomeJogador = ""
        
        var secondRandomNumber:Int = Int (arc4random_uniform(3))
        
        selecionarTime.timeAi = secondRandomNumber
    }
    
    var timesMenu:[String] = ["Cor", "SP", "San", "Pal"]
    var nomeTimesArray:[String] = ["CORINTHIANS","SÃO PAULO", "SANTOS", "PALMEIRAS"]
    var i:Int = 0
    
    @IBAction func cliqueDireita(sender: AnyObject) {

        selecionarTime.timeEscolha++;
        i++;
        
        if (i > 3){
            i = 0
            selecionarTime.timeEscolha = 0
        }
        
         var nomeTimesString:String = self.nomeTimesArray [i]
        
    
        var timeAEscolher:String = self.timesMenu[i]
        
        self.timesAEscolher.image = UIImage(named:timeAEscolher)
        
        self.nomeTimes.text = String(nomeTimesArray[i])
        
        print(selecionarTime.timeEscolha);
        
    }
    
    @IBAction func ciqueEsquerda(sender: AnyObject) {

        selecionarTime.timeEscolha--;
        i--

            if (i == -1){
                i = 3
                selecionarTime.timeEscolha = 3
            }
    
        var nomeTimesString:String = self.nomeTimesArray [i]
        
        var timeAEscolher:String = self.timesMenu[i]
        
        
        self.timesAEscolher.image = UIImage(named:timeAEscolher)
        
        self.nomeTimes.text = String(nomeTimesArray[i])
        
        print(selecionarTime.timeEscolha)
        
    }
    
    @IBAction func buttonGoSound(sender: AnyObject) {
        buttonAudioPlayer.play()
        
    }
    
            
}


