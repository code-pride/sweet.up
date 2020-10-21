//
//  DiscoverAndMatchView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 17/10/2020.
//

import SwiftUI

struct TileTextImageLink: View {
  let category: String
  let text: String

  let imageHeight: CGFloat = 146

  var body: some View {
    NavigationLink(destination: DiscoverAndMatchCategoryView(category: category)) {
      VStack(spacing: 0) {
        Image(category).resizable()
          .frame(height: imageHeight)
        HStack(spacing: 0) {
          Text(text)
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
    }
  }
}

struct DiscoverAndMatchView: View {
  var body: some View {
    NavigationView {
      ZStack {
        Color.init("MainBackgroundColor").ignoresSafeArea()
        ScrollView {
          VStack(spacing: 0) {
            TileTextImageLink(category: "a-perfect-match", text: "a \"perfect\" match")
            TileTextImageLink(category: "dinner-at-home", text: "dinner at home")
            TileTextImageLink(category: "a-perfect-gift", text: "a \"perfect\" gift")
            TileTextImageLink(category: "movie-night", text: "movie night")
            TileTextImageLink(category: "evening-out", text: "evening out")
            TileTextImageLink(category: "next-vacations", text: "next vacations")
            TileTextImageLink(category: "weekend-retreat", text: "weekend retreat")
            TileTextImageLink(category: "active-together", text: "active together")
            TileTextImageLink(category: "next-best-date", text: "next best date")
          }
        }
      }
    }
  }
}

struct MatchView_Previews: PreviewProvider {
  static var previews: some View {
    DiscoverAndMatchView()
  }
}
