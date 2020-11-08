//
//  categories.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 25/10/2020.
//

import Foundation

struct DiscoverAndMatchCategory: Identifiable {
  var id = UUID()

  var name: String
  var title: String
  var description: String? = nil
}

let discoverAndMatchCategories: [String: DiscoverAndMatchCategory] = [
  "a-perfect-match": DiscoverAndMatchCategory(
    name: "a-perfect-match", title: "a \"perfect\" match"),
  "dinner-at-home": DiscoverAndMatchCategory(
    name: "dinner-at-home", title: "dinner at home",
    description:
      "Browse through ideas of dishes to cook at home, get a match and unlock new recipes!"),
  "a-perfect-gift": DiscoverAndMatchCategory(
    name: "a-perfect-gift", title: "a \"perfect\" gift"),
  "movie-night": DiscoverAndMatchCategory(name: "movie-night", title: "movie night"),
  "evening-out": DiscoverAndMatchCategory(name: "evening-out", title: "evening out"),
  "next-vacations": DiscoverAndMatchCategory(name: "next-vacations", title: "next vacations"),
  "weekend-retreat": DiscoverAndMatchCategory(
    name: "weekend-retreat", title: "weekend retreat"),
  "active-together": DiscoverAndMatchCategory(
    name: "active-together", title: "active together"),
  "next-best-date": DiscoverAndMatchCategory(name: "next-best-date", title: "next best date"),
]
