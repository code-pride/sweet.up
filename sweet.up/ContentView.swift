//
//  ContentView.swift
//  sweet.up
//
//  Created by Tomasz Ferens on 11/10/2020.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      ZStack {
        RoundedRectangle(cornerRadius: 10).foregroundColor(.blue)
          .edgesIgnoringSafeArea( /*@START_MENU_TOKEN@*/.all /*@END_MENU_TOKEN@*/)
        VStack {
          Text("Twoja stara pierze w rzece")
          Image("Profile Photo4x")
        }

        //            TabView {
        //              NavigationView {
        //                VStack {
        //                  NavigationLink(destination: ProfileView()) {
        //                    Text("Profile")
        //                  }
        //
        //                  NavigationLink(destination: AboutView()) {
        //                    Text("About")
        //                  }
        //                  NavigationLink(destination: LearningView()) {
        //                    Text("Learning View")
        //                  }
        //                  .navigationBarTitle("WIP Navigation")
        //                }
        //              }
        //              .tabItem {
        //                Image(systemName: "1.square.fill")
        //                Text("First")
        //              }
        //              Text("Another Tab")
        //                .tabItem {
        //                  Image(systemName: "2.square.fill")
        //                  Text("Second")
        //                }
        //              Text("The Last Tab")
        //                .tabItem {
        //                  Image(systemName: "3.square.fill")
        //                  Text("Third")
        //                }
        //            }
        //                .background(Color.red.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        //                .font(.headline)
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
    //    TabView {
    //      NavigationView {
    //        VStack {
    //          NavigationLink(destination: ProfileView()) {
    //            Text("Profile")
    //          }
    //
    //          NavigationLink(destination: AboutView()) {
    //            Text("About")
    //          }
    //          NavigationLink(destination: LearningView()) {
    //            Text("Learning View")
    //          }
    //          .navigationBarTitle("WIP Navigation")
    //        }
    //      }
    //      .tabItem {
    //        Image(systemName: "1.square.fill")
    //        Text("First")
    //      }
    //      Text("Another Tab")
    //        .tabItem {
    //          Image(systemName: "2.square.fill")
    //          Text("Second")
    //        }
    //      Text("The Last Tab")
    //        .tabItem {
    //          Image(systemName: "3.square.fill")
    //          Text("Third")
    //        }
    //    }
    //    .font(.headline)

  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
