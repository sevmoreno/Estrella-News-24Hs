//
//  NoticiaCollectionViewCell.swift
//  Estrella News 24Hs
//
//  Created by Juan Moreno on 12/14/20.
//

import UIKit

class NoticiaCollectionViewCell: UICollectionViewCell {
    
    let imagen: UIImageView = {
    
        let a = UIImageView ()
        
        a.image = #imageLiteral(resourceName: "24Horas_Bug")
        a.contentMode = .scaleAspectFill
       
        return a
        
    } ()
    
    let titular: UILabel = {
        
        let a = UILabel ()
        
        a.numberOfLines = 2
        a.font = UIFont.preferredFont(forTextStyle: .headline)
        // a.adjustsFontSizeToFitWidth = true
        
        a.text = "Congress confronts US cybersecurity weaknesses in wake of SolarWinds hacking campaign "
        return a
        
    } ()
    
    
    let subTitulo: UILabel = {
        
        let a = UILabel ()
        
        a.numberOfLines = 4
        a.font = UIFont.preferredFont(forTextStyle: .body)
        // a.adjustsFontSizeToFitWidth = true
        
        a.text = "xweaknesses in wake of SolarWinds hacking campaign "
        return a
        
    } ()
    
        
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .yellow
        addSubview(imagen)
        
        imagen.translatesAutoresizingMaskIntoConstraints = false
        imagen.clipsToBounds = true
        NSLayoutConstraint.activate([
            imagen.leftAnchor.constraint(equalTo: leftAnchor, constant: 4),
            imagen.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            imagen.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -4),
            imagen.widthAnchor.constraint(equalToConstant: frame.width / 3)
        ])
        
        addSubview(titular)
        titular.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            titular.leftAnchor.constraint(equalTo: imagen.rightAnchor
                                          , constant: 8),
            titular.topAnchor.constraint(equalTo: imagen.topAnchor, constant: 0),
            titular.rightAnchor.constraint(equalTo: rightAnchor, constant: -4)
        
        ])
        
        addSubview(subTitulo)
        subTitulo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            subTitulo.topAnchor.constraint(equalTo: titular.bottomAnchor, constant: 2),
            subTitulo.leftAnchor.constraint(equalTo: titular.leftAnchor),
            subTitulo.rightAnchor.constraint(equalTo: titular.rightAnchor),
            subTitulo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4)
        
        ])
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
