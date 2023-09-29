//
//  cinbebedaView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 26/09/23.
//

import SwiftUI

struct cinbebedaView: View {
    @State var text = ""
    var imageName: String
    
    var body: some View {
        ScrollView {
            
            VStack (alignment: .leading){
                
                
                
                HStack{
                    
                    Image("apple")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 30, height: 30)
                    
                    Text("mural da")
                        .font(.footnote)
                        .fontWeight(.light)
                        .padding(.leading, 0)
                    
                    Text("Comunidade Academy")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                    
                }
                .padding(.horizontal)
                //                .padding(.horizontal, 10)
                VStack (spacing: 0){
                    Image("Cinbebeda")
                        .resizable()
                        .padding(.vertical)
                        .scaledToFill()
                        .frame(maxHeight: 150)
                        .clipped()
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(height: 60)
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 1, green: 0, blue: 0.87), location: 0.00),
                                        Gradient.Stop(color: Color(red: 1, green: 0, blue: 0.87), location: 0.00),
                                        Gradient.Stop(color: Color(red: 1, green: 0, blue: 0.87), location: 0.00),
                                        Gradient.Stop(color: Color(red: 0.12, green: 0.6, blue: 0.99), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0, y: 1),
                                    endPoint: UnitPoint(x: 1, y: 1)
                                )
                            )
                        HStack {
                            VStack {
                                Text("Quarta, 30 Agosto")
                                    .font(.footnote)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.leading)
                                
                                    .foregroundColor(.white)
                                Text("CInbebeda")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal)
                    }
                }
                
                VStack (alignment: .leading, spacing: 20) {
                    
                    VStack (alignment: .leading, spacing: 10){
                        Text("CInbebeda Gerouuu!! Prontas para o próximo!")
                            .lineLimit(4)
                        HStack{
                            Image("image 3")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 20, height: 20)
                                .overlay(RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color .gray, lineWidth: 2))
                            Text("Postado por Ísis Dore")
                                .font(.footnote)
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                        }
                    }
                    
                    
                    //                .padding(.horizontal, 10)
                    
                    Divider()
                    //                    .padding(.horizontal, 10)
                    
                    
                    Text("2 Comentários")
                        .font(.title2)
                        .bold()
                    
                    
                    VStack() {
                        
                        Text("Fiquei muito louco, não lembro de nada!! Ansioso para o próximo também! KAKAK")
                            .lineLimit(4)
                        
                        
                        
                        
                        
                        HStack{
                            Image("image 1")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 30, height: 30)
                                .overlay(RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color .gray, lineWidth: 2))
                            
                            Text("Gustavo Lucena")
                                .font(.footnote)
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            
                            Text("Há 4 horas")
                                .fontWeight(.light)
                                .font(.footnote)
                            
                            
                        }
                        
                    }
                    
                    .padding()
                    .background(.quaternary)
                    .cornerRadius(10)
                    
                    
                    VStack{
                        
                        Text("Misericórdia, saí horrível nessa mas tá valendo! Saudade de vocêsssss")
                            .lineLimit(4)
                        
                        HStack{
                            Image("image 2")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 30, height: 30)
                                .overlay(RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color .gray, lineWidth: 2))
                            Text("Eduarda Alves")
                                .font(.footnote)
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                            Spacer()
                            Text("Há 5 horas")
                                .fontWeight(.light)
                                .font(.footnote)
                        }
                        
                    }
                    .padding()
                    .background(.quaternary)
                    .cornerRadius(10)
                   
//                    Spacer()
                    
                    TextField("Adicionar comentário...", text: $text)
                        .textFieldStyle(.roundedBorder)
                        .font(.callout)
                    
                }
                
                .padding()
                
            }
            
            //        .ignoresSafeArea()
            .navigationTitle("Evento")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
    
}

struct cinbebedaView_Previews: PreviewProvider {
    static var previews: some View {
        cinbebedaView(imageName: "evento1")
    }
}
