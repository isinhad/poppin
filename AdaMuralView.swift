//
//  SwiftUIView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 19/09/23.
//

import SwiftUI

struct AdaMuralView: View {
    let imageNames = ["evento3", "evento4", "evento3", "evento1", "evento5", "evento2"]
    
    var body: some View {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                ForEach(imageNames, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 118, height: 118)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .background(Color.gray)
                        .cornerRadius(8)
                }
            }
        }
    }

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AdaMuralView()
    }
}
