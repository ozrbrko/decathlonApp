//
//  KategorilerVC.swift
//  ODEV6_BURAKOZER
//
//  Created by Burak Özer on 10.03.2022.
//

import UIKit

class KategorilerVC: UIViewController {
    
    
    @IBOutlet weak var urunlerCollectionView: UICollectionView!
    
    var urunlerListesi = [Urunler]()
    
    
    @IBOutlet weak var akilliSiralamaButton: UIButton!
    
    
    @IBOutlet weak var filtreleButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        


        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        imageView.contentMode = .scaleAspectFit
           let image = UIImage(named: "DecathlonLogo.png")
           imageView.image = image
           navigationItem.titleView = imageView
        
        
        let lineView = UIView(frame: CGRect(x: 0, y: 110, width: 430, height: 1.0))  // Çizgi ekleme
        lineView.layer.borderWidth = 1.0
        lineView.layer.borderColor = UIColor.init(white: 0.8, alpha: 0.8).cgColor
        self.view.addSubview(lineView)
        
        let lineView2 = UIView(frame: CGRect(x: 0, y: 165, width: 430, height: 1.0))  // Çizgi ekleme
        lineView2.layer.borderWidth = 1.0
        lineView2.layer.borderColor = UIColor.init(white: 0.8, alpha: 0.8).cgColor
        self.view.addSubview(lineView2)
        
        
        
        akilliSiralamaButton.backgroundColor = UIColor.clear

              // Set button corner radius.
        akilliSiralamaButton.layer.cornerRadius = 5

              // Set button border width.
        akilliSiralamaButton.layer.borderWidth = 1

              // Set button border color to green.
        akilliSiralamaButton.layer.borderColor = UIColor.init(white: 0.8, alpha: 0.8).cgColor
        
        filtreleButton.backgroundColor = UIColor.clear

              // Set button corner radius.
        filtreleButton.layer.cornerRadius = 5

              // Set button border width.
        filtreleButton.layer.borderWidth = 1

              // Set button border color to green.
        filtreleButton.layer.borderColor = UIColor.init(white: 0.8, alpha: 0.8).cgColor
        
        urunlerCollectionView.delegate = self
        urunlerCollectionView.dataSource = self
        
        let u1 = Urunler(urunId: 1, urunMarkaAdi: "ADIDAS", urunAciklama: "FUTBOL TOPU - ADIDAS ŞAMPİYONLAR LİGİ", urunResimAdi: "top1", urunFiyat: 150, urunPuan: 4.9)
        let u2 = Urunler(urunId: 2, urunMarkaAdi: "KIPSTA", urunAciklama: "ÖĞRETİCİ FUTBOL TOPU - 4 NUMARA - MAVİ", urunResimAdi: "top2", urunFiyat: 100, urunPuan: 4.2)
        let u3 = Urunler(urunId: 6, urunMarkaAdi: "KIPSTA", urunAciklama: "FUTBOL TOPU - 5 NUMARA - SİYAH/YEŞİL", urunResimAdi: "top6", urunFiyat: 120, urunPuan: 4.3)
        let u4 = Urunler(urunId: 4, urunMarkaAdi: "KIPSTA", urunAciklama: "ÖĞRETİCİ FUTBOL TOPU - 5 NUMARA - YEŞİL", urunResimAdi: "top4", urunFiyat: 120, urunPuan: 0.0)
        let u5 = Urunler(urunId: 5, urunMarkaAdi: "KIPSTA", urunAciklama: "FUTBOL TOPU - 5 NUMARA - MAVİ", urunResimAdi: "top5", urunFiyat: 90, urunPuan: 3.4)
        let u6 = Urunler(urunId: 3, urunMarkaAdi: "VOIT", urunAciklama: "FUTBOL TOPU - 5 NUMARA - BEYAZ", urunResimAdi: "top3", urunFiyat: 60, urunPuan: 4.0)
        
        
        urunlerListesi.append(u1)
        urunlerListesi.append(u2)
        urunlerListesi.append(u3)
        urunlerListesi.append(u4)
        urunlerListesi.append(u5)
        urunlerListesi.append(u6)

     
        
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumLineSpacing = 10
        tasarim.minimumInteritemSpacing = 10
        let genislik = urunlerCollectionView.frame.size.width
        let hucreGenislik = (genislik-30)/2
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.7)
        urunlerCollectionView!.collectionViewLayout = tasarim
        
        
        
    }
    

}

extension KategorilerVC : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urunlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let urun = urunlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "urunHucre", for: indexPath) as! UrunlerCollectionViewCell
        
        cell.urunImageView.image = UIImage(named: urun.urunResimAdi!)
        cell.urunFiyatLabel.text = "\(urun.urunFiyat!) ₺"
        cell.urunAciklamaLabel.text = urun.urunAciklama
        cell.urunMarkaLabel.text = urun.urunMarkaAdi
        cell.urunPuanLabel.text = "(\(urun.urunPuan!))"
        
        cell.layer.borderColor = UIColor.white.cgColor
        cell.backgroundColor = UIColor.white
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 5
        
        return cell
    }
}

    
