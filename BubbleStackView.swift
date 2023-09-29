//
//  BubbleView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 13/09/23.
//

import SwiftUI

struct BubbleStackView: View {
    @State var selectedName: String = "bubble"
    
    var imageName = ["ada", "taylor", "nautico", "cinema"]
    
    var bubblePressed: (String) -> Void
    
    
    
    var body: some View {
        HStack (spacing: 10) {
            if selectedName == "bubble" {
                Image("bubble")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 48, height: 48)
                    .overlay(RoundedRectangle(cornerRadius: 100)
                        .stroke(Color .blue, lineWidth: 2))
                    .onTapGesture {
                        selectedName = "bubble"
                        print(selectedName)
                        bubblePressed("bubble")
                    }
            } else {
                Image("bubble")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 48, height: 48)
                    .onTapGesture {
                        selectedName = "bubble"
                        print(selectedName)
                        bubblePressed("bubble")
                    }
            }
            
            
            Divider()
                .frame(height: 50)
            
            ScrollView (.horizontal) {
                HStack(spacing: 10) {
                    ForEach(imageName, id: \.self){ name in
                        if selectedName == name {
                            Image(name)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 48, height: 48)
                                .overlay(RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color .blue, lineWidth: 2))
                                .onTapGesture {
                                    if name != "nautico" && name != "cinema" {
                                        selectedName = name
                                        print(selectedName)
                                        bubblePressed(name)
                                    }
                                }
                        } else {
                            Image(name)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 48, height: 48)
                                .onTapGesture {
                                    if name != "nautico" && name != "cinema" {
                                        selectedName = name
                                        print(selectedName)
                                        bubblePressed(name)
                                    }
                                }
                        }
                    }
                    Image(systemName: "plus")
                        .foregroundColor(.blue)
                }
            }
        }
        
    }
}

struct BubbleView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleStackView { name in
            print(name)
        }
    }
}
