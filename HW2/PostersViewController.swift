//
//  PostersViewController.swift
//  HW23
//
//  Created by stephanie saenz on 9/18/23.
//

import UIKit
//import Nuke

    class PostersViewController: UIViewController, UICollectionViewDataSource {
        
        var movies: [Movie] = []
        @IBOutlet weak var collectionView: UICollectionView!
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return movies.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            // Get a collection view cell (based in the identifier you set in storyboard) and cast it to our custom AlbumCell
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell

                // Use the indexPath.item to index into the albums array to get the corresponding album
                let movie = movies[indexPath.item]
               // Get the artwork image url
                //let imageUrl = movie.poster_path
                cell.configure(with: movie)
                // Set the image on the image view of the cell
               // Nuke.loadImage(with: imageUrl, into: cell.posterImageView)

                return cell
        }
    
    //var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
        // Create a search URL for fetching albums (`entity=album`)
        let request = URLRequest(url: URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=c37413c4f6612f089e1c566983bf3219")!)
        //let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            // Create a JSON Decoder
            //let decoder = JSONDecoder()
            do {
                let decoder = JSONDecoder()
                // Try to parse the response into our custom model
                let response = try decoder.decode(MoviesResponse.self, from: data)
                
                let fetchedMovies = response.results
                print("Success! \(fetchedMovies)")
                
                DispatchQueue.main.async {
                    self?.movies = fetchedMovies
                    self?.collectionView.reloadData()
                }
                
                //print(movies)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
        // NOTE: This collection view scrolls vertically, but collection views can alternatively scroll horizontally.
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout

        // The minimum spacing between adjacent cells (left / right, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumInteritemSpacing = 4

        // The minimum spacing between adjacent cells (top / bottom, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumLineSpacing = 4

        // Set this to however many columns you want to show in the collection.
        let numberOfColumns: CGFloat = 3

        // Calculate the width each cell need to be to fit the number of columns, taking into account the spacing between cells.
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns - 1)) / numberOfColumns

        // Set the size that each tem/cell should display at
        layout.itemSize = CGSize(width: width, height: width)


        // Initiate the network request
            //task.resume()
        // Do any additional setup after loading the view.
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UICollectionViewCell,
           let indexPath = collectionView.indexPath(for: cell),
           let detailViewController = segue.destination as? DetailViewController {
            let tappedMovie = movies[indexPath.item]
                // Set the movie on the detail view controller
                detailViewController.movie = tappedMovie
            }
        }
        
}
