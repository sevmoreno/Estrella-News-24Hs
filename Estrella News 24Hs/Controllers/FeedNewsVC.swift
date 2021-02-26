//
//  FeedNewsVC.swift
//  Estrella News 24Hs
//
//  Created by Juan Moreno on 12/13/20.


import UIKit

class FeedNewsVC: UIViewController {
    
    var colle: UICollectionView!
    
    
    var noticias = [Noticia]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
//        layout.itemSize = CGSize(width: 60, height: 60)
        
        colle = UICollectionView(frame: self.view.frame, collectionViewLayout: UICollectionViewFlowLayout())
        colle.register(NoticiaCollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        colle.backgroundColor = UIColor.white
        
        
        view.addSubview(colle)
        
        colle.backgroundColor = .lightGray
        colle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            colle.topAnchor.constraint(equalTo: view.topAnchor, constant: (navigationController?.navigationBar.frame.height)! + 10) ,
            colle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            colle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            colle.heightAnchor.constraint(equalToConstant: view.frame.height - (tabBarController?.tabBar.frame.size.height)! )
        ])
        
        colle.dataSource = self
        colle.delegate = self
        
    }
    
}

extension FeedNewsVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        
        return cell
    }
    
    // METODO QUE HABLA DEL ESPACING
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 4
        }
        
        // TAMANO DE LA CELULA
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let width = view.frame.width 
            return CGSize(width: width, height: 100)
        }
    
    
}


