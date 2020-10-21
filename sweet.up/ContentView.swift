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
            Image("Home2")
              .renderingMode(.original)
            Text("Home")
          }
        }.tag(0)
      PhotoAlbumView()
        .tabItem {
          VStack {
            Image("Photo Album2")
              .renderingMode(.original)
            Text("Album")
          }
        }.tag(1)
      DiscoverAndMatchView()
        .tabItem {
          VStack {
            Image("Discover & Match2")
              .renderingMode(.original)
            Text("Discover & Match")
          }
        }.tag(2)
      CalendarView()
        .tabItem {
          VStack {
            Image("Calendar2")
              .renderingMode(.original)
            Text("Calendar")
          }
        }.tag(3)
    }
    .font(.headline)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

//ZStack {
//  ZStack {
//    RoundedRectangle(cornerRadius: 10).foregroundColor(.blue)
//      .edgesIgnoringSafeArea( /*@START_MENU_TOKEN@*/.all /*@END_MENU_TOKEN@*/)
//    VStack {
//      Text("Twoja stara pierze w rzece")
//      Image("Profile Photo4x")
//    }
//  }
//}
