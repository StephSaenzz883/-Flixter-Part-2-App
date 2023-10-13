//
//  Movie.swift
//  HW2
//
//  Created by stephanie saenz on 9/10/23.
//test

import Foundation

struct MoviesResponse: Decodable {
    //let resultCount: Int
    let results: [Movie]
}

// TODO: Create a Movie struct with selected properties
struct Movie: Decodable {
    let original_title: String
    let overview: String
    let backdrop_path: URL
    let popularity: Double
    let poster_path: URL
    let vote_average: Double
    let vote_count: Int
    //let popularity: Double
}

// TODO: Create an extension with mock movies static var
extension Movie {
    /// An array of mock movies with selected properties
    static var mockMovies: [Movie] = [
        Movie(original_title: "Meg 2: The Trench",
              overview: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/w500/8pjWz2lt29KyVGoq1mXYu6Br7dE.jpg")!,
              popularity: 4372.097, poster_path: URL(string: "https://image.tmdb.org/t/p/w500/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!,
              vote_average: 7.0,
              vote_count: 1563),

        Movie(original_title: "Barbie",
              overview: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/w500/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!,
              popularity: 3486.508, poster_path: URL(string: "https://image.tmdb.org/t/p/w500/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!,
              vote_average: 7.4,
              vote_count: 4007),

        Movie(original_title: "The Nun II",
              overview: "1956 – France. A priest is murdered. An evil is spreading. The sequel to the worldwide smash hit follows Sister Irene as she once again comes face-to-face with Valak, the demon nun.",
              backdrop_path: URL(string: "https://image.tmdb.org/t/p/w500/53z2fXEKfnNg2uSOPss2unPBGX1.jpg")!,
              popularity: 1812.129, poster_path: URL(string: "https://image.tmdb.org/t/p/w500/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg")!,
              vote_average: 7.0,
              vote_count: 63),

        Movie(original_title: "Strays",
              overview: "When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/w500/2ii07lSwHarg0gWnJoCYL3Gyd1j.jpg")!,
              popularity: 1691.43, poster_path: URL(string: "https://image.tmdb.org/t/p/w500/n1hqbSCtyBAxaXEl1Dj3ipXJAJG.jpg")!, vote_average: 7.3,
              vote_count: 151),

        Movie(original_title: "Talk to Me",
              overview: "When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/w500/3tzPSJiCPqacAgRsMkMPof2ZinL.jpg")!,
              popularity: 3760.119, poster_path: URL(string: "https://image.tmdb.org/t/p/w500/kdPMUMJzyYAc4roD52qavX0nLIC.jpg")!, vote_average: 7.2,
              vote_count: 511),
        
        Movie(original_title: "Teenage Mutant Ninja Turtles: Mutant Mayhem",
              overview: "After years of being sheltered from the human world, the Turtle brothers set out to win the hearts of New Yorkers and be accepted as normal teenagers through heroic acts. Their new friend April O'Neil helps them take on a mysterious crime syndicate, but they soon get in over their heads when an army of mutants is unleashed upon them.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/w500/w2nFc2Rsm93PDkvjY4LTn17ePO0.jpg")!,
              popularity: 1402.547, poster_path:URL(string:"https://image.tmdb.org/t/p/w500/sGm09gLVyICQl8lVIHpmHZAgSNq.jpg")!, vote_average: 7.3,
              vote_count: 380),

        // Add more mock movies here as needed...
    ]
}



// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
//func formattedTrackDuration(with milliseconds: Int) -> String {
    //let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    //let truncatedSeconds = seconds / 1000
  //  if truncatedSeconds >= 10 {
  //      return "\(minutes):\(truncatedSeconds)"
   // } else {
   //     return "\(minutes):0\(truncatedSeconds)"
    //}
//}

