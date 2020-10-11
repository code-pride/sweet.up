//
//  ProfileView.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 11/10/2020.
//

import SwiftUI

struct ProfileView: View {
  @State var sliderValue: Double = 50.0
  let primaryColor = Color(red: 176.0 / 255, green: 16.0 / 255, blue: 65.0 / 255, opacity: 1)

  // this is the modifier for common things - just for learning purposes
  struct WhiteLabelModifier: ViewModifier {
    func body(content: Content) -> some View {
      content.foregroundColor(Color.white)
    }
  }

  struct PrimaryButtonModifier: ViewModifier {
    let primaryColor = Color(red: 176.0 / 255, green: 16.0 / 255, blue: 65.0 / 255, opacity: 1)

    func body(content: Content) -> some View {
      content.padding(10.0).border( /*@START_MENU_TOKEN@*/Color.black /*@END_MENU_TOKEN@*/)
        .accentColor(primaryColor)
    }
  }

  func doWhatever() -> String {
    let myResponse: String = "dupa"
    return myResponse
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

        Button(action: /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Action@*/{} /*@END_MENU_TOKEN@*/) {
          Text("Some action")
        }.modifier(PrimaryButtonModifier())

      }
      .padding(.top, 96)

      Spacer()

      Text("\(Int(self.sliderValue.rounded()))")

      HStack {
        Text("1")
        Slider(value: self.$sliderValue, in: 1...100).accentColor(primaryColor)

        Text("100")
      }
    }
    .background(Image("Background"), alignment: .top)  // Background bleed from the top
    .padding(.top, -44)  // Background bleed from the top
    .accentColor(primaryColor)
    .navigationBarHidden(true)
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
