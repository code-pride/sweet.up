//
//  ProfileView.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 11/10/2020.
//

import SwiftUI

struct ProfileView: View {
  // this is the modifier for common things - just for learning purposes
  struct WhiteLabelModifier: ViewModifier {
    func body(content: Content) -> some View {
      content.foregroundColor(Color.white)
    }
  }

  struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
      content.padding(10.0).border( /*@START_MENU_TOKEN@*/Color.black /*@END_MENU_TOKEN@*/)
    }
  }

  var body: some View {

    VStack {
      HStack {
        Text("Settings")
          .modifier(WhiteLabelModifier())
        Spacer()
        Text( /*@START_MENU_TOKEN@*/"Logout" /*@END_MENU_TOKEN@*/)
          .modifier(WhiteLabelModifier())
      }
      .padding(.top, 48)
      .padding(.horizontal, 24)

      VStack {
        Image("Profile Photo4x")  // Circled profile image

        Text("Alice Wilson")
          .font(.headline)

        Text("A mantra goes here")
          .font(.subheadline)

        Button(action: {}) {
          Text("Some action")
        }.modifier(PrimaryButtonModifier())

        Spacer()

        Button(action: {}) {
          Text("Some action")
        }.padding(20)
          .background(Color.red)
          .font(.subheadline)

      }
      .padding(.top, 96)

      Spacer()

    }
    .background(Image("Background"), alignment: .top)  // Background bleed from the top
    .padding(.top, -44)  // Background bleed from the top
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
    ProfileView().environment(\.colorScheme, .dark)
  }
}
