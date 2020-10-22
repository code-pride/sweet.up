//
//  CalendarView.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 21/10/2020.
//

import SwiftUI

struct CalendarView: View {
  var body: some View {
    NavigationView {
      ZStack {
        Color.init("MainBackgroundColor").ignoresSafeArea()
        VStack {
          NavigationLink(destination: ProfileView()) {
            Text("Profile")
          }
          NavigationLink(destination: AboutView()) {
            Text("About")
          }
          NavigationLink(destination: LearningView()) {
            Text("Learning View")
          }
        }
      }
    }
  }
}

struct CalendarView_Previews: PreviewProvider {
  static var previews: some View {
    CalendarView()
  }
}
