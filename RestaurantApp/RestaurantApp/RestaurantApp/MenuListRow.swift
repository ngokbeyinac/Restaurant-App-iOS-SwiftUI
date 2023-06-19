//
//  MenuListRow.swift
//  MenuApp
//
//  Created by Nureddin Gökbey İnaç on 17.06.2023.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(18)
            
            Text(item.name)
                .bold()
            Spacer()
            Text("$" + item.price)
                .padding(.trailing, 12)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.1)
        )
    }
}

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(item: MenuItem(name: "Test Item", price: "3.99", imageName: "tako-sushi"))
    }
}
