//
//  MenuView.swift
//  RestaurantApp
//
//  Created by Nureddin Gökbey İnaç on 17.06.2023.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    
    var dataService = DataService()
    
    
    var body: some View {
        List(menuItems) { item in
            
            MenuListRow(item: item)
            
            
        }
        .listStyle(.plain)
        .onAppear {
            
            // Call for the data from the DataService
            menuItems = dataService.getData()
        }
    }
    
    
}



    
   
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
