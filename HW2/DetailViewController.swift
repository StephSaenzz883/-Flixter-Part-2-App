//
//  DetailViewController.swift
//  HW2
//
//  Created by stephanie saenz on 9/11/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    //var movies: [Movie] = []
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var votesLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    
    
    var movie: Movie!
   // var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // A property to store the track object.
        // We can set this property by passing along the track object associated with the track the user tapped in the table view.
            // Load the image located at the `artworkUrl100` URL and set it on the image view.
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w500/" + movie.backdrop_path.absoluteString)
            Nuke.loadImage(with: imageUrl!, into: movieImageView)
            
            // Set labels with the associated track values.
            movieNameLabel.text = movie.original_title
            averageLabel.text = String(movie.vote_average)
            votesLabel.text = String(movie.vote_count)
            popularityLabel.text = String(movie.popularity)
            overviewLabel.text = movie.overview
    
        }

    
}
