//
//  Poster.swift
//  HW23
//
//  Created by stephanie saenz on 9/18/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: URL
}

