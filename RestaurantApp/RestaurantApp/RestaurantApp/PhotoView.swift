//
//  PhotoView.swift
//  RestaurantApp
//
//  Created by Nureddin Gökbey İnaç on 18.06.2023.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedPhoto: String
    @Binding var sheetVisible: Bool
    
    
    var body: some View {
        ZStack {
            Image(selectedPhoto)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                HStack {
                    Spacer()
                    Button {
                        sheetVisible = false
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .scaleEffect(2)
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                Spacer()
            }
            
            
        }
        
        
        
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(selectedPhoto: Binding.constant("01"), sheetVisible: Binding.constant(true))
    }
}
