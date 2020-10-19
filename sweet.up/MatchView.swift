//
//  MatchView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 17/10/2020.
//

import SwiftUI

struct TileTextImageLink: View {
  let imageName: String
  let imageText: String

  let imageHeight: CGFloat = 146

  var body: some View {
    VStack(spacing: 0) {
      Image(imageName).resizable()
        .frame(height: imageHeight)
      HStack(spacing: 0) {
        Text(imageText)
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

struct DiscoverAndMatchView: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 0) {
        TileTextImageLink(imageName: "a-perfect-match", imageText: "a \"perfect\" match")
        TileTextImageLink(imageName: "dinner-at-home", imageText: "dinner at home")
        TileTextImageLink(imageName: "a-perfect-gift", imageText: "a \"perfect\" gift")
        TileTextImageLink(imageName: "movie-night", imageText: "movie night")
        TileTextImageLink(imageName: "evening-out", imageText: "evening out")
        TileTextImageLink(imageName: "next-vacations", imageText: "next vacations")
        TileTextImageLink(imageName: "weekend-retreat", imageText: "weekend retreat")
        TileTextImageLink(imageName: "active-together", imageText: "active together")
        TileTextImageLink(imageName: "next-best-date", imageText: "next best date")
      }
    }
  }
}

struct MatchView_Previews: PreviewProvider {
  static var previews: some View {
    DiscoverAndMatchView()
  }
}
