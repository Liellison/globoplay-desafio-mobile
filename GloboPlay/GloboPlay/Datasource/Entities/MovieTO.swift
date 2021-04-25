//
//  MovieTO.swift
//  GloboPlay
//
//  Created by Liellison Menezes on 25/04/21.
//

import Foundation

struct Root : Decodable {
   let results : [MovieTO]
}

struct MovieTO:  Codable {
    
    var id : Int
    var title : String
    var poster_path : String
    var overview : String
    var vote_average : Double
    var release_date : String
}
