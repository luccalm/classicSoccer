//
//  ViewController.swift
//  Xcode6Tutorial
//
//  Created by Leonardo Rubio 1 on 3/24/15.
//  Copyright (c) 2015 FantasyName. All rights reserved.
//

import UIKit
import Darwin
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    


    //@IBOutlet weak var setaDireita: UIButton!
    @IBOutlet weak var botaoSair: UIButton!
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var PlayerScore: UILabel!
    @IBOutlet weak var EnemyScore: UILabel!
    @IBOutlet weak var timeVencedor: UILabel!
    
    @IBOutlet weak var viewFinal: UIView!
    @IBOutlet weak var notaJogarNovamente: UIView!
    
    @IBOutlet weak var viewParaAtributos: UIView!
    
    @IBOutlet weak var forcaUm: UILabel!
    @IBOutlet weak var forcaDois: UILabel!
    @IBOutlet weak var powerOne: UILabel!
    @IBOutlet weak var powerTwo: UILabel!
    
    
    
    /*var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
    var cardNamesArrayAi:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"] */
    //var buttonAudioPlayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("backGround", ofType: "wav")!), error: nil)
    
    var musicaBackGround = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("backGround", ofType: "wav")!), error: nil)
    var apito = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("apitoJuiz", ofType: "wav")!), error: nil)
    var gol = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("gol", ofType: "wav")!), error: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        musicaBackGround.numberOfLoops = -1
        gol.numberOfLoops = -1
        
        // Som em loop dentro do jogo
        if(selecionarTime.musica == 0) {
        musicaBackGround.play()
            gol.play()
            selecionarTime.musica = 1
            apito.play()

        }
        
        //Printar o placar atual
        self.PlayerScore.text = String(selecionarTime.playerScoreTotal)

        self.EnemyScore.text = String (selecionarTime.enemyScoreTotal)

        //Escolha time jogador
        if(selecionarTime.timeEscolha == 0) {
            //Corinthians
            selecionarTime.cardNamesArray = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
        
        else if(selecionarTime.timeEscolha == 1) {
            //Sao Paulo
            selecionarTime.cardNamesArray = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
        
        else if(selecionarTime.timeEscolha == 2) {
            // Santos
            NSLog("Santos")
           /* var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]*/
             selecionarTime.cardNamesArray = ["Deck2", "San1", "San2", "San3", "San4", "San5", "San6", "San7", "San8", "San9", "San10", "San11", "San13", "San14"]
        }
        else if(selecionarTime.timeEscolha == 3) {
            // 
            
            selecionarTime.cardNamesArray = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
        
        //Escolha Time Ai
        if(selecionarTime.timeAi == 0) {
            //Corinthians
            selecionarTime.cardNamesArrayAi = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
            
        else if(selecionarTime.timeAi == 1) {
            //Sao Paulo
            
            selecionarTime.cardNamesArrayAi = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
            
        else if(selecionarTime.timeAi == 2) {
            // Santos
            /* var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]*/
            selecionarTime.cardNamesArrayAi = ["Deck2", "San1", "San2", "San3", "San4", "San5", "San6", "San7", "San8", "San9", "San10", "San11", "San13", "San14"]
        }
        else if(selecionarTime.timeAi == 3) {
            // Palmeiras
            selecionarTime.cardNamesArrayAi = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
        
    

    }
    
    
    @IBAction func botaoSair(sender: AnyObject) {
        //Tem que mudar! Nao pode sair. Menu inicial <
        exit(0);
    }
    
    @IBAction func playRoundTapped(sender: UIButton) {
        
        
        // randomize um numero para o firstImageView
        var firstRandomNumber:Int = Int(arc4random_uniform(13))
        
        
        // Forca para AI
        var secondForca:Int = Int(70 + arc4random_uniform(30))
        
        forcaUm.text = String(format: "%i", selecionarTime.forcaCarta)
        forcaDois.text = String(format: "%i", secondForca)

        //Controi uma string com numero randomico
        //var firstCardString:String = String(format: "Card%i", firstRandomNumber)
        
        //Acessa as cartas por array
        var firstCardString:String = selecionarTime.cardNamesArray[firstRandomNumber]
        
        // Seta a firstCardView com o numero correspondente
        self.firstCardImageView.image = UIImage (named: firstCardString)
        
        
        //randomize a number for secondCardView
        var secondRandomNumber:Int = Int (arc4random_uniform(13))
        
        //constroi string com random number pra secondCardView
        //var secondCardString:String = String(format: "Card%i", secondRandomNumber)
        
        //acessa cartas por array
        var secondCardString:String = selecionarTime.cardNamesArrayAi [secondRandomNumber]
        
        // Seta secondCardView com numero correspondente
        self.secondCardImageView.image = UIImage (named: secondCardString)
        
        //determina a carta maior
        if selecionarTime.forcaCarta > secondForca {
            selecionarTime.playerScoreTotal += 1
            self.PlayerScore.text = String(selecionarTime.playerScoreTotal)
            
        }
        else {
            selecionarTime.enemyScoreTotal += 1
            self.EnemyScore.text = String (selecionarTime.enemyScoreTotal)
        }
        
        // Verificar a pontuacao dos times
        if(selecionarTime.enemyScoreTotal == 5)
        {
            
            timeVencedor.text = "O time adversário ganhou!"
            viewFinal.hidden = false
            notaJogarNovamente.hidden = false
            viewParaAtributos.hidden = true
            apito.play()

        }
        
        else if(selecionarTime.playerScoreTotal == 5){
            
            NSLog("TesteScorePlayer")
            timeVencedor.text = "Você ganhou!"
            viewFinal.hidden = false
            notaJogarNovamente.hidden = false
            viewParaAtributos.hidden = true
            apito.play()

        }
        //View para tela atributos 
        else {
        viewParaAtributos.hidden = false
        }
    }

}







