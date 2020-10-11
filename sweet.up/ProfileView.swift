//
//  ProfileView.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 11/10/2020.
//

import SwiftUI

struct ProfileView: View {
  @State var sliderValue: Double = 50.0

  func doWhatever() -> String {
    let myResponse: String = "dupa"
    return myResponse
  }

  var body: some View {
    // TODO: Background bleed from the top
    // TODO: Circled profile image
    // TODO: h1 Label
    // TODO: h2 label
    // TODO: Button
    // TODO: some wall content place, extended to max bottom

    VStack {
      HStack {
        Text("Settings")
          .foregroundColor(Color.white)
        Spacer()
        Text( /*@START_MENU_TOKEN@*/"Logout" /*@END_MENU_TOKEN@*/)
          .foregroundColor(Color.white)
      }
      .padding(.top, 48)
      .padding(.horizontal, 24)

      VStack {
        Image("Profile Photo4x")
            
        Text("Alice Wilson")
          .font(.headline)

        Text("A mantra goes here")
          .font(.subheadline)
      }
      .padding(.top, 96)

      Spacer()

      Text("\(Int(self.sliderValue.rounded()))")

      HStack {
        Text("1")
        Slider(value: self.$sliderValue, in: 1...100)

        Text("100")
      }
    }
    .background(Image("Background"), alignment: .top)
    .padding(.top, -44)
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
