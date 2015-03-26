//
//  SelecaoTimes.swift
//  Xcode6Tutorial
//
//  Created by Leonardo Rubio 1 on 3/25/15.
//  Copyright (c) 2015 FantasyName. All rights reserved.
//

import UIKit




class SelecaoTimes: UIViewController {
    @IBOutlet weak var ciqueDireita: UIButton!
    @IBOutlet weak var timesAEscolher: UIImageView!
    @IBOutlet weak var nomeTimes: UILabel!

    
    var timesMenu:[String] = ["Cor", "Sp", "San", "Pal"]
    var nomeTimesArray:[String] = ["CORINTHIANS","SAO PAULO", "SANTOS", "PALMEIRAS"]
    var i:Int = 0
    
    @IBAction func cliqueDireita(sender: AnyObject) {
        print(" TESTE ")
        
        
        if (i > (0)){
            i--
        }
        
         var nomeTimesString:String = self.nomeTimesArray [i]
        
    
        var timeAEscolher:String = self.timesMenu[i]
        
        self.timesAEscolher.image = UIImage(named:timeAEscolher)
        
        self.nomeTimes.text = String(nomeTimesArray[i])
        
    }

    
    
    
    
    @IBAction func ciqueEsquerda(sender: AnyObject) {
    
        print(" ESQUERDA ")
            
            
            if (i<3){
                i++
            }
    
        var nomeTimesString:String = self.nomeTimesArray [i]
        
        var timeAEscolher:String = self.timesMenu[i]
    
        self.timesAEscolher.image = UIImage(named:timeAEscolher)
        
        self.nomeTimes.text = String(nomeTimesArray[i])
        
    }
}
