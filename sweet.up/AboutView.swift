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
      Color.init("MainBackgroundColor").ignoresSafeArea()
      VStack {
        Text("🤮 About app")
          .foregroundColor(Color.white)
        Text("Nothing to see here")
          .foregroundColor(Color.white)
        Image("Photo Album")
      }
    }

  }
}

struct AboutView_Previews: PreviewProvider {
  static var previews: some View {
    AboutView()
  }
}
