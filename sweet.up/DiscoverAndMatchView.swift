//
//  DiscoverAndMatchView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 17/10/2020.
//

import SwiftUI

struct Category: Identifiable {
  var id = UUID()

  var name: String
  var textOnImage: String
}

struct CategoryTile: View {
  let category: Category

  let imageHeight: CGFloat = 146

  var body: some View {
    NavigationLink(destination: DiscoverAndMatchCategoryView(category: category.name)) {
      VStack(spacing: 0) {
        Image(category.name).resizable()
          .frame(height: imageHeight)
        HStack(spacing: 0) {
          Text(category.textOnImage)
            .font(Font.body.bold())
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(.white)
            .textCase(.uppercase)
          Image("arrow-right").scaleEffect(1.5)
        }
        .padding(.top, -40)
        .padding(.trailing, 20)
        .padding(.leading, 20)
      }
    }.navigationBarHidden(true)
  }
}

let categories: [Category] = [
  Category(name: "a-perfect-match", textOnImage: "a \"perfect\" match"),
  Category(name: "dinner-at-home", textOnImage: "dinner at home"),
  Category(name: "a-perfect-gift", textOnImage: "a \"perfect\" gift"),
  Category(name: "movie-night", textOnImage: "movie night"),
  Category(name: "evening-out", textOnImage: "evening out"),
  Category(name: "next-vacations", textOnImage: "next vacations"),
  Category(name: "weekend-retreat", textOnImage: "weekend retreat"),
  Category(name: "active-together", textOnImage: "active together"),
  Category(name: "next-best-date", textOnImage: "next best date"),
]

struct DiscoverAndMatchView: View {
  var body: some View {
    NavigationView {
      ZStack {
        Color.init("MainBackgroundColor").ignoresSafeArea()
        ScrollView {
          VStack(spacing: 0) {
            ForEach(categories) { category in
              CategoryTile(category: category)
            }
          }
        }
      }
    }
  }
}

struct MatchView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      DiscoverAndMatchView()
    }
  }
}
