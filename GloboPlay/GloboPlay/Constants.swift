//
//  Constants.swift
//  GloboPlay
//
//  Created by Liellison Menezes on 25/04/21.
//

import Foundation

struct CONST {
    struct API_CONSTANTS {
        static let API_KEY = "api_key=2a0eb1c99630d71df118961ee0b5864e"
        static let BASE_URL = "https://api.themoviedb.org/3/movie/"
        static let MOVIE = "movie/"
        static let TV = "tv/"
        static let QUERY = "?"
        static let UPCOMING = "upcoming?"
        static var RELATED = "/similar?"
        static let POPULAR = "popular?"
        static let NOW_PLAYING = "now_playing?"
        static let VIDEO = "/videos?"
        static let LANGUAGE_EN = "&language=en-US&page=1"
        static let LANGUAGE_BR = "&language=pt-BR&page=1"
        static let BASE_IMAGE_URL = "https://image.tmdb.org/t/p/w185"
    }
}
