//
//  LearningRest.swift
//  sweet.up
//
//  Created by Marcin Krawczyk on 16/10/2020.
//

import SwiftUI

struct LearningRest: View {
  var body: some View {
    VStack {
      Text("Click button to get data from github api (printed to console)").padding(20)
      Button(action: {
        DataService.shared.fetchGists { (result) in
          switch result {
          case .success(let gists):
            for gist in gists {
              print("\(gist)\n")
            }
          case .failure(let error):
            print(error)
          }
        }
      }) {
        Text("Give me github public gist data")
          .padding(20)
          .border(Color.accentColor, width: 2)
      }
    }
  }
}

struct LearningRest_Previews: PreviewProvider {
  static var previews: some View {
    LearningRest()
  }
}
