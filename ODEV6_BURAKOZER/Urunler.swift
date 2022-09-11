//
//  Urunler.swift
//  ODEV6_BURAKOZER
//
//  Created by Burak Özer on 13.03.2022.
//

import Foundation


class Urunler {
    
    var urunId:Int?
    var urunMarkaAdi:String?
    var urunAciklama:String?
    var urunResimAdi:String?
    var urunFiyat:Double?
    var urunPuan:Double?
    
    
    init(){
        
    }
    
    init(urunId:Int,urunMarkaAdi:String,urunAciklama:String,urunResimAdi:String,urunFiyat:Double,urunPuan:Double){
        
        self.urunId = urunId
        self.urunMarkaAdi = urunMarkaAdi
        self.urunAciklama = urunAciklama
        self.urunResimAdi = urunResimAdi
        self.urunFiyat = urunFiyat
        self.urunPuan = urunPuan
        
        
    }
    
}
