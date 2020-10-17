//
//  DiscoverAndMatchCategoryView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 17/10/2020.
//

import SwiftUI

struct DiscoverAndMatchCategoryView: View {
  let category: String
  var body: some View {
    VStack {
      Text("category: \(category)")
    }
  }
}

struct DiscoverAndMatchCategory_Previews: PreviewProvider {
  static var previews: some View {
    // Not sure what to pass here for the preview :thinking:
    DiscoverAndMatchCategoryView(category: "non-existing-category")
  }
}
