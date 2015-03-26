//
//  EscolhaAtributos.swift
//  Xcode6Tutorial
//
//  Created by Leonardo Rubio 1 on 26/03/15.
//  Copyright (c) 2015 FantasyName. All rights reserved.
//

import UIKit

class EscolhaAtributos: UIViewController {

    @IBOutlet weak var forcaButton: UIButton!
    @IBOutlet weak var velocidadeButton: UIButton!
    @IBOutlet weak var overrallButton: UIButton!
    @IBOutlet weak var forcaLabel: UILabel!
    @IBOutlet weak var velocidadeLabel: UILabel!
    @IBOutlet weak var overrallLabel: UILabel!
    

    //var secondCardString:String = String(format: "Card%i", secondRandomNumber)
    var forcaRand:Int = 70 + Int(arc4random_uniform(30))
    var velocidadeRand:Int = 70 + Int(arc4random_uniform(30))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var overrallRand = (forcaRand + velocidadeRand) / 2
        selecionarTime.forcaCarta = 0

        // Do any additional setup after loading the view, typically from a nib.
        
        //var secondCardString:String = String(format: "Card%i", secondRandomNumber)

        //var secondCardString:String = String(format: "%i", forcaRand)
        
        forcaLabel.text = String(format: "%i", forcaRand)
        velocidadeLabel.text = String(format: "%i", velocidadeRand)     //forcaLabel.text
        overrallLabel.text = String(format: "%i", overrallRand)
        //overrallLabel.text =
        
        if(selecionarTime.timeEscolha == 0) {
            //Corinthians
            var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Deck", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        }
            
       // else if(selecionarTime.timeEscolha == 1) {
            //Sao Paulo
            
            //var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
      //  }
            
        else if(selecionarTime.timeEscolha == 2) {
            // Santos
            
            var cardNamesArray:[String] = ["Deck2", "San1", "San2", "San3", "San4", "San5", "San6", "San7", "San8", "San9", "San10", "San11", "San13", "San14"]
        }
       // else if(selecionarTime.timeEscolha == 3) {
            //Palmeiras
            
           // var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
        //}
        

        
    }


    
    @IBAction func forcaButton(sender: AnyObject) {
    
        selecionarTime.forcaCarta = forcaRand;
        
    }
    
    @IBAction func velocidadeButton(sender: AnyObject) {
    
        selecionarTime.forcaCarta = velocidadeRand

    }
    
    
    @IBAction func overrallButton(sender: AnyObject) {
    
        selecionarTime.forcaCarta = (velocidadeRand + forcaRand) / 2
    
    }
    
}