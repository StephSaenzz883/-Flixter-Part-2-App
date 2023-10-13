//
//  PosterCell.swift
//  HW23
//
//  Created by stephanie saenz on 9/18/23.
//

import UIKit
import Nuke

class PosterCell: UICollectionViewCell {
    @IBOutlet weak var posterImageView: UIImageView!
    
    func configure(with movie: Movie) {
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w500/" + movie.poster_path.absoluteString)

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: imageUrl!, into: posterImageView)
    }
    
}
