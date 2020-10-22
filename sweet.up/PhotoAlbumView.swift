//
//  PhotoAlbumView.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 21/10/2020.
//

import SwiftUI

struct PhotoAlbumView: View {
  var body: some View {
    ZStack {
      Color.init("MainBackgroundColor").ignoresSafeArea()
      VStack {
        Text("Photo album view")
          .foregroundColor(Color.white)
      }
    }
  }
}

struct PhotoAlbumView_Previews: PreviewProvider {
  static var previews: some View {
    PhotoAlbumView()
  }
}
