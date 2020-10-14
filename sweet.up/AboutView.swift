//
//  AboutView.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 12/10/2020.
//

import SwiftUI

struct AboutView: View {
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 10).foregroundColor(.blue)
      Color.red
        .edgesIgnoringSafeArea( /*@START_MENU_TOKEN@*/.all /*@END_MENU_TOKEN@*/)
      Image("love")
      VStack {
        Text("🤮 About app")
        Text("Nothing to see here")
      }
    }

  }
}

struct AboutView_Previews: PreviewProvider {
  static var previews: some View {
    AboutView()
  }
}
