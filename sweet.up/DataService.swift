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

  func fetchGists(completion: @escaping (Result<Any, Error>) -> Void) {
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
        let json = try JSONSerialization.jsonObject(with: validData, options: [])
        completion(.success(json))
      } catch let serializationError {
        completion(.failure(serializationError))
      }

    }.resume()
  }
}
