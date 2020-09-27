//
//  ContentView.swift
//  Food Tracker
//
//  Created by Фёдор Ткаченко on 20.09.20.
//

import SwiftUI
import CoreData

struct ContentView: View {
  @ObservedObject var store: SandwichStore
  
  let dummySandwich: Sandwich = Sandwich(name: "Patty", ingredientCount: 2)

  func makeSandwich() -> Void {
    withAnimation {
      store.sandwiches.append(dummySandwich)
    }
  }
  
  func deleteSandwiches(offsets: IndexSet) -> Void {
    withAnimation {
      store.sandwiches.remove(atOffsets: offsets)
    }
  }

  func moveSandwiches(from: IndexSet, to: Int) -> Void {
    withAnimation {
      store.sandwiches.move(fromOffsets: from, toOffset: to)
    }
  }

  var body: some View {
    NavigationView {
      if (store.sandwiches.count > 0) {
        List {
          ForEach(store.sandwiches) { sandwich in
            SandwichCell(sandwich: sandwich)
          }
          .onMove(perform: moveSandwiches)
          .onDelete(perform: deleteSandwiches)
          
          if (store.sandwiches.count > 0) {
            HStack {
              Spacer()
              
              Text("\(store.sandwiches.count) sandwiches")
                .font(.footnote)
                .foregroundColor(.secondary)
              
              Spacer()
            }
          }
        }
        .navigationTitle("Sandwiches")
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            #if os(iOS)
            EditButton()
            #endif
          }

          ToolbarItem(placement: .navigationBarLeading) {
            Button("Add", action: makeSandwich)
          }
        }

      } else {
        Text("No sandwiches found")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(store: testStore)
  }
}
