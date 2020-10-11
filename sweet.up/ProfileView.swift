//
//  ProfileView.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 11/10/2020.
//

import SwiftUI

struct ProfileView: View {
  @State var sliderValue: Double = 50.0

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
        Spacer()
        Text( /*@START_MENU_TOKEN@*/"Logout" /*@END_MENU_TOKEN@*/)
      }.padding(.all, 24)

      Circle()
        .frame(width: 158.0, height: 158.0)
      Text("Alice Wilson")
        .font(.headline)
      Text("A mantra goes here")
        .font(.subheadline)
      Spacer()

      Text("\(self.sliderValue)")

      HStack {
        Text("1")
        Slider(value: self.$sliderValue, in: 1...100)

        Text("100")
      }

    }

  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
