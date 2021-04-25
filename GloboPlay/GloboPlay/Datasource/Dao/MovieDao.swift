//
//  MovieDao.swift
//  GloboPlay
//
//  Created by Liellison Menezes on 25/04/21.
//

import Foundation

class MovieDao {
    class func getMovies(_ movie: String, completion: @escaping (MovieTO) -> Void) {
        guard let url = URL(string: CONST.API_CONSTANTS.BASE_URL +  CONST.API_CONSTANTS.UPCOMING + CONST.API_CONSTANTS.API_KEY + CONST.API_CONSTANTS.LANGUAGE_BR) else { return }
        print(url)
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else { return }
                if response.statusCode == 200 {
                    guard let data = data else { return }
                    do {
                        let movies = try JSONDecoder().decode(MovieTO.self, from: data)
                        completion(movies)
                    } catch {
                        print(error.localizedDescription)
                    }
                } else {
                    print("Status inválido do servidor, Status Code: \(response.statusCode)")
                }
            } else {
                print(error!.localizedDescription)
            }
        }.resume()
    }
}
