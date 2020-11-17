//
//  DiscoverAndMatchCategoryView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 17/10/2020.
//

import CardStack
import SwiftUI

enum CustomLeftRight {
  case left, right

  public static func direction(degrees: Double) -> Self? {
    switch degrees {
    case 045..<135: return .right
    case 225..<315: return .left
    default: return nil
    }
  }
}

struct CardView: View {
  var cardColor: Color
  var isOnTop: Bool

  var body: some View {
    Group {
      if !isOnTop {
        EmptyView()
      } else {
        Rectangle()
          .fill(cardColor)
          .cornerRadius(8)
          .shadow(radius: 8)
      }
    }
  }
}

struct DiscoverAndMatchCategoryView: View {
  let category: DiscoverAndMatchCategory
  @State var cards = [Color.orange, Color.purple, Color.green]
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    VStack {
      HStack {
        Image(systemName: "xmark")
          .foregroundColor(Color.white)
          .padding(.leading, 20)
          .onTapGesture {
            presentationMode.wrappedValue.dismiss()
          }

        Text(category.title.uppercased())
          .fontWeight(.heavy)
          .font(.title)
          .foregroundColor(Color.white)
          .frame(maxWidth: .infinity)
          .padding(.trailing, 40)
      }
      .padding(.top, 80)

      if category.description != nil {
        Text(category.description!)
          .foregroundColor(Color.white)
          .frame(maxWidth: .infinity)
          .padding(.horizontal, 30)
          .padding(.top, 5)
          .font(.subheadline)
          .multilineTextAlignment(.center)
      }
      CardStack(
        direction: { degrees in CustomLeftRight.direction(degrees: degrees) },
        data: cards,
        onSwipe: { card, direction in
          print("Swiped \(card) to \(direction)")
        },
        content: { cardColor, direction, isOnTop in
          CardView(cardColor: cardColor, isOnTop: isOnTop)
        }
      )
      .frame(height: 550)
      .padding(20)
      HStack(spacing: 90) {
        HStack(spacing: 65) {
          Image("dam-rotate-ccw")
            .background(
              Circle()
                .fill(Color.white)
                .frame(width: 44, height: 44)
            )
          Image("dam-heart-no")
            .background(
              Circle()
                .fill(Color.init("DarkAccentColor"))
                .frame(width: 72, height: 72)
            )
        }
        HStack(spacing: 65) {
          Image("dam-heart")
            .background(
              Circle()
                .fill(Color.init("DarkAccentColor"))
                .frame(width: 72, height: 72)
            )
          Image("dam-arrow-right")
            .background(
              Circle()
                .fill(Color.white)
                .frame(width: 44, height: 44)
            )
        }
      }
      .frame(maxWidth: .infinity)
      .padding(.top, 25)

      Spacer()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.init("AccentColor"))
    .edgesIgnoringSafeArea(.all)
  }

}

struct DiscoverAndMatchCategoryView_Previews: PreviewProvider {
  static var previews: some View {
    return DiscoverAndMatchCategoryView(
      category: DiscoverAndMatchCategory(
        name: "XD", title: "Dinner at home",
        description:
          "Browse through ideas of dishes to cook at home, get a match, and unlock new recipes!"))
  }
}
