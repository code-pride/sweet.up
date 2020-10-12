//
//  ContentView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 11/10/2020.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      VStack {
        NavigationLink(destination: ProfileView()) {
          Text("Profile")
        }
        NavigationLink(destination: AboutView()) {
          Text("About")
        }
        .navigationBarTitle("WIP Navigation")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
