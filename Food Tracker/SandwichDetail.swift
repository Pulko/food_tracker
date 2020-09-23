//
//  SandwichDetail.swift
//  Food Tracker
//
//  Created by Фёдор Ткаченко on 20.09.20.
//

import Foundation
import SwiftUI

struct SandwichDetail: View {
  var sandwich: Sandwich
  
  @State private var zoomed: Bool = false

  var body: some View {
    VStack {
      Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
      
      Image(sandwich.thumbnailName)
        .resizable()
        .aspectRatio(contentMode: zoomed ? .fill : .fit)
        .onTapGesture(count: 1) {
          withAnimation {
            zoomed.toggle()
          }
        }
      
      Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
      
      if (!zoomed) {
        HStack() {
          Spacer()
          
          VStack {
            if sandwich.isSpicy {
              Label(sandwich.name, systemImage: "flame.fill")
                .foregroundColor(.yellow)
                .font(.headline)
            } else {
              Text(sandwich.name)
                .font(.headline)
            }
            Text("\(sandwich.ingredientCount) ingredients")
              .font(.caption)
              .foregroundColor(sandwich.isSpicy ? .yellow : .black)
          }

          Spacer()
        }
        .padding(.all)
        .font(Font.headline.smallCaps())
        .background(sandwich.isSpicy ? Color.red : Color.white)
        .transition(.move(edge: .bottom))
      }

    }
    .navigationTitle(sandwich.name)
    .edgesIgnoringSafeArea([.bottom])
  }
}

struct SandwichDetail_Previews: PreviewProvider {
  static var previews: some View {
    SandwichDetail(sandwich: testData[4])
  }
}
