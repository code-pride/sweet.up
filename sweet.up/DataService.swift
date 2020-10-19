//
//  DataService.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 16/10/2020.
//

import Foundation

class DataService {
  static let shared = DataService()
  fileprivate let baseURLString = "https://api.github.com"

  func fetchGists(completion: @escaping (Result<[Gist], Error>) -> Void) {
    var componentUrl = URLComponents()
    componentUrl.scheme = "https"
    componentUrl.host = "api.github.com"
    componentUrl.path = "/gists/public"

    guard let validURL = componentUrl.url else {
      print("URL creating failed")
      return
    }

    URLSession.shared.dataTask(with: validURL) { (data, response, error) in

      if let httpResponse = response as? HTTPURLResponse {
        print("API status: \(httpResponse.statusCode)")
      }

      guard let validData = data, error == nil else {
        completion(.failure(error!))
        return
      }

      do {
        // that was in the beggining without model for response
        //        let json = try JSONSerialization.jsonObject(with: validData, options: [])

        let gists = try JSONDecoder().decode([Gist].self, from: validData)
        completion(.success(gists))
      } catch let serializationError {
        completion(.failure(serializationError))
      }

    }.resume()
  }
}
