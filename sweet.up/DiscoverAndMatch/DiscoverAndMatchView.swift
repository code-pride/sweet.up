//
//  DiscoverAndMatchView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 17/10/2020.
//

import SwiftUI

struct CategoryTile: View {
  let category: Category
  @State private var isPresented = false

  let imageHeight: CGFloat = 146

  func categoryFullScreenModal() -> some View {
    return DiscoverAndMatchCategoryView(category: category)
  }

  var body: some View {
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
    .fullScreenCover(isPresented: $isPresented, content: self.categoryFullScreenModal)
    .onTapGesture { self.isPresented.toggle() }
  }
}

struct DiscoverAndMatchView: View {
  let categoriesElements = [Category](categories.values)

  var body: some View {
    ZStack {
      Color.init("MainBackgroundColor").ignoresSafeArea()
      ScrollView {
        VStack(spacing: 0) {
          ForEach(categoriesElements) { category in
            CategoryTile(category: category)
          }
        }
      }
    }
  }
}

struct MatchView_Previews: PreviewProvider {
  static var previews: some View {
    return DiscoverAndMatchView()
  }
}
