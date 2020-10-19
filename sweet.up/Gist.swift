//
//  Gist.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 16/10/2020.
//

import Foundation

// this is model for our data returned from API
struct Gist: Codable {
  var id: String
  var isPublic: Bool
  var description: String

  enum CodingKeys: String, CodingKey {
    case id
    case description
    case isPublic = "public"
  }

}
