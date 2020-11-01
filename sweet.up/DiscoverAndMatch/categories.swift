//
//  categories.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 25/10/2020.
//

import Foundation

struct Category: Identifiable {
  var id = UUID()

  var name: String
  var textOnImage: String
  var description: String? = nil
}

let categories: [String: Category] = [
  "a-perfect-match": Category(name: "a-perfect-match", textOnImage: "a \"perfect\" match"),
  "dinner-at-home": Category(
    name: "dinner-at-home", textOnImage: "dinner at home",
    description:
      "Browse through ideas of dishes to cook at home, get a match and unlock new recipes!"),
  "a-perfect-gift": Category(name: "a-perfect-gift", textOnImage: "a \"perfect\" gift"),
  "movie-night": Category(name: "movie-night", textOnImage: "movie night"),
  "evening-out": Category(name: "evening-out", textOnImage: "evening out"),
  "next-vacations": Category(name: "next-vacations", textOnImage: "next vacations"),
  "weekend-retreat": Category(name: "weekend-retreat", textOnImage: "weekend retreat"),
  "active-together": Category(name: "active-together", textOnImage: "active together"),
  "next-best-date": Category(name: "next-best-date", textOnImage: "next best date"),
]
