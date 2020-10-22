//
//  LearningView.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 13/10/2020.
//

import SwiftUI

struct LearningView: View {
  let pets = [
    "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie",
    "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie",
    "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie",
    "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie",
    "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie",
    "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie", "Catie", "Laurie",
  ]

  let images = ["Image1", "Image2", "Image3"]

  var body: some View {
    ScrollView {
      VStack {
        Image("Image 1")
        Image("Image 2")
        Image("Image 3")
      }
      VStack {
        ForEach(pets, id: \.self) {
          Text($0)
            .padding()
            .foregroundColor(Color.white)
            .background(Color.black)
            .border(Color.gray, width: 3)
        }
      }
    }
  }
}

struct LearningView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      LearningView()
      LearningView()
        .environment(\.colorScheme, .dark)
    }

  }
}
