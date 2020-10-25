//
//  DiscoverAndMatchCategoryView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 17/10/2020.
//

import SwiftUI

struct Card: View {
  var body: some View {
    Rectangle()
      .fill(Color.purple)
      .frame(width: 300, height: 300)
      .cornerRadius(8)
      .shadow(radius: 8)
      .padding()
  }
}

struct DiscoverAndMatchCategoryView: View {
  let category: String

  var body: some View {
    VStack {
      Text("elo \(category)")
      Card()
    }
  }
}

struct DiscoverAndMatchCategory_Previews: PreviewProvider {
  static var previews: some View {
    // Not sure what to pass here for the preview :thinking:
    DiscoverAndMatchCategoryView(category: "non-existing-category")
  }
}
