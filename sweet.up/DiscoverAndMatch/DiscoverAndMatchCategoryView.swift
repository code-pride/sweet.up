//
//  DiscoverAndMatchCategoryView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 17/10/2020.
//

import CardStack
import SwiftUI

struct CardView: View {
  var cardColor: Color

  var body: some View {
    Rectangle()
      .fill(cardColor)
      .cornerRadius(8)
      .shadow(radius: 8)
  }
}

struct DiscoverAndMatchCategoryView: View {
  let category: Category
  @State var cards = [Color.orange, Color.purple, Color.green]
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    VStack {
      Text(category.name)
        .foregroundColor(Color.white)
      CardStack(
        direction: LeftRight.direction,
        data: cards,
        onSwipe: { card, direction in
          print("Swiped \(card) to \(direction)")
        },
        content: { cardColor, direction, isOnTop in  // View builder function
          CardView(cardColor: cardColor)
        }
      )
      .frame(height: 600)
      .padding(10)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.init("AccentColor"))
    .edgesIgnoringSafeArea(.all)
    .onTapGesture {
      presentationMode.wrappedValue.dismiss()
    }
  }
}
