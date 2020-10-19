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
        NavigationLink(destination: LearningRest()) {
          Text("Learning Rest")
        }
        NavigationLink(destination: DiscoverAndMatchView()) {
          Text("Match")
        }
        .navigationBarTitle("WIP Navigation")
      }
      Text("Another Tab")
        .tabItem {
          Image(systemName: "2.square.fill")
          Text("Second")
        }
      Text("The Last Tab")
        .tabItem {
          Image(systemName: "3.square.fill")
          Text("Third")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
