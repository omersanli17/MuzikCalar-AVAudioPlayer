//
//  MuzikOynatmaDurdurma.swift
//  MusicPlayer
//
//  Created by omer sanli on 22.12.2021.
//

import Foundation
import AVFoundation

var muzikOynatma: AVAudioPlayer?

func muzikOynatici(dosyaAdi: String, dosyaUzantisi: String, var oynatici: Int){
    // Dosya adı, dosya uzantı, değişken - oynatma ve durdurma
    
    if let dosyaYolu = Bundle.main.path(forResource: dosyaAdi, ofType: dosyaUzantisi){
        
        do {
        
        muzikOynatma = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: dosyaYolu))
            if oynatici == 1 {
                muzikOynatma?.play()
            }else{
                muzikOynatma?.stop()
            }
        
    }catch{
        print("Hata oluştu")
    }
    }
        
}



