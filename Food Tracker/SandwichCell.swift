//
//  SandwichCell.swift
//  Food Tracker
//
//  Created by Фёдор Ткаченко on 20.09.20.
//

import Foundation
import SwiftUI

struct SandwichCell: View {
  var sandwich: Sandwich

  let spicyScale = {(_ spicy: Bool) -> String in
      spicy ? "Hot" : "Not hot / Mild"
  }
  
  let spicyAnotherScale = {$0 ? "Hot" : "Not hot / Mild"}

  var body: some View {
    NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
      Image(sandwich.thumbnailName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 60.0, height: 60.0)
        
      
      VStack(alignment: .leading) {
        Text(sandwich.name)
          .font(.headline)
          .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: .black)
          .foregroundColor(.black)
        Text("\(sandwich.ingredientCount) ingredients")
          .font(Font.subheadline)
        Text(spicyAnotherScale(sandwich.isSpicy))
          .font(.footnote)
          .foregroundColor(Color.gray)
      }
    }
  }
}

struct SandwichCell_Previews: PreviewProvider {
    static var previews: some View {
        SandwichCell(sandwich: testData[3])
    }
}
