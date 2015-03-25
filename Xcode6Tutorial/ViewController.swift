//
//  ViewController.swift
//  Xcode6Tutorial
//
//  Created by Leonardo Rubio 1 on 3/24/15.
//  Copyright (c) 2015 FantasyName. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var i: Int!
    var j: Int!
    @IBOutlet weak var placar1: UILabel!
    @IBOutlet weak var vitoriaFinal: UILabel!
    @IBOutlet weak var placar2: UILabel!
    @IBOutlet weak var vitoria: UILabel!
    @IBOutlet weak var forca2: UILabel!
    @IBOutlet weak var forca1: UILabel!
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    
    @IBOutlet weak var tela: UIView!
    @IBOutlet weak var jogarSim: UIButton!
    @IBOutlet weak var jogarNao: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var PlacarFinal: UILabel!
    var cardNamesArray:[String] = ["Card1Cassio", "Card2FabioSantos", "Card3Fagner", "Card4Gil", "Card5Felipe", "Card6Elias", "Card7Ralf", "Card8Jadson", "Card9RenatoAugusto", "Card10VagnerLove", "Card11Malcom", "Card12Emerson", "Card13Danilo", "Card14Guerrero"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tela.hidden = true;
        i = 0
        j = 0
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
    }

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
        
        //self.forca1.text = "teste1";
        //self.forca2.text = "teste2";
        
        var forca1Num:Int = Int(arc4random_uniform(50));
        var forca2Num:Int = Int(arc4random_uniform(50));

        var firstNum:String = String(format: "%i", forca1Num);
        var secondNum:String = String(format: "%i", forca2Num);
        //self.forca1.text = [NSString stringWithFormat:@"%d", forca1Num];
        //self.forca2.text = [NSString stringWithFormat:@"%d", forca2Num];
        

        
        forca1.text = firstNum;
        forca2.text = secondNum
        
        //[forca1 [setText:[NSString stringWithFormat:@"%d", forca1Num]];

        //self.forca1.text = ["%i",forca1Num];
        //self.forca2.text = ""forca2Num;
        
        //forca1.textLabel?
        
        //randomize a number for secondCardView
        var secondRandomNumber:Int = Int (arc4random_uniform(13))
        
        //constroi string com random number pra secondCardView
        //var secondCardString:String = String(format: "Card%i", secondRandomNumber)
        
        //acessa cartas por array
        var secondCardString:String = self.cardNamesArray [secondRandomNumber]
        
        // Seta secondCardView com numero correspondente
        self.secondCardImageView.image = UIImage (named: secondCardString)
        
        
        
        
        //determina a carta maior
        if forca1Num > forca2Num {
            vitoria.text = "Time 1 ganhou!"
            i = i + 1;
            if(i >= 10)
            {
                //Deletar label - TO do

                PlacarFinal.text = "Time 1 ganhou!";
                vitoriaFinal.text = "Time 1 Ganhou!"
                tela.hidden = false;


            }
            else
            {
            var placar1S:String = String(format: "%i", i);
            placar1.text = placar1S
            }
        }
        else if forca1Num == forca2Num {
            vitoria.text = "Empate!"
        }
        else {
            vitoria.text = "Time 2 ganhou!"
            j = j + 1;
            if(j >= 10)
            {

                PlacarFinal.text = "Time 2 Ganhou!";
                vitoriaFinal.text = "Time 2 Ganhou!"
                tela.hidden = false;
                


            }
            else
            {
            var placar2S:String = String(format: "%i", j);
            placar2.text = placar2S
            }
        }
    }

}







