//
//  SelecaoTimes.swift
//  Xcode6Tutorial
//
//  Created by Leonardo Rubio 1 on 3/25/15.
//  Copyright (c) 2015 FantasyName. All rights reserved.
//

import UIKit


struct selecionarTime {
    static var timeEscolha = 0
}


class SelecaoTimes: UIViewController {
    @IBOutlet weak var ciqueDireita: UIButton!
    @IBOutlet weak var timesAEscolher: UIImageView!
    @IBOutlet weak var nomeTimes: UILabel!

    
    var timesMenu:[String] = ["Cor", "SP", "San", "Pal"]
    var nomeTimesArray:[String] = ["CORINTHIANS","SAO PAULO", "SANTOS", "PALMEIRAS"]
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
            
}


