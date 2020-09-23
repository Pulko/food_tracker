//
//  Food_TrackerApp.swift
//  Food Tracker
//
//  Created by Фёдор Ткаченко on 20.09.20.
//

import SwiftUI

@main
struct Food_TrackerApp: App {
  @StateObject private var store = SandwichStore()

  var body: some Scene {
    WindowGroup {
      ContentView(store: store)
    }
  }
}

struct Food_TrackerApp_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(store: testStore)
  }
}
