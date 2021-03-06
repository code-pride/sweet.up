//
//  ContentView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 11/10/2020.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      HomeView()
        .tabItem {
          VStack {
            Image("Home")
              .renderingMode(.original)
            Text("Home")
          }
        }.tag(0)
      PhotoAlbumView()
        .tabItem {
          VStack {
            Image("Photo Album")
              .renderingMode(.original)
            Text("Album")
          }
        }.tag(1)
      DiscoverAndMatchView()
        .tabItem {
          VStack {
            Image("Discover & Match")
              .renderingMode(.original)
            Text("Discover & Match")
          }
        }.tag(2)
      CalendarView()
        .tabItem {
          VStack {
            Image("Calendar")
              .renderingMode(.original)
            Text("Calendar")
          }
        }.tag(3)
    }
    .onAppear(perform: {
      UITabBar.appearance().barTintColor = UIColor(named: "MainBackgroundColor")
    })
    .font(.headline)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
