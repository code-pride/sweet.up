//
//  HomeView.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 21/10/2020.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    NavigationView {
      ZStack {
        Color.init("MainBackgroundColor").edgesIgnoringSafeArea(.all)
        VStack {
          Text("Home view")
            .foregroundColor(Color.white)
        }
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
