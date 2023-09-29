//
//  testinhos.swift
//  testes
//
//  Created by Maria Eduarda Alves on 26/09/23.
//

import SwiftUI

struct testinhos: View {
    
    var body: some View {
//        NavigationView {
            VStack {
                    ScrollView {
                        ZStack (alignment: .topLeading){
                            Image("poker")
                                .resizable()
                                .padding(.vertical)
                                .scaledToFill()
                                .frame(maxHeight: 250)
                                .clipped()
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(height: 150)
                                .background(
                                    LinearGradient(
                                        stops: [
                                            Gradient.Stop(color: .black.opacity(0.7), location: 0.00),
                                            Gradient.Stop(color: .black.opacity(0), location: 1.00),
                                        ],
                                        startPoint: UnitPoint(x: 0.5, y: 0),
                                        endPoint: UnitPoint(x: 0.5, y: 1)
                                    )
                                )
                        }
                        
                        VStack (alignment: .leading, spacing: 20){
                            
                            HStack{
                                Image("apple")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 30, height: 30)
                                Text("promovido por")
                                    .font(.footnote)
                                    .fontWeight(.light)
                                Text("Academy")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                            }
                            
                            HStack {
                                HStack (spacing: -8) {
                                    Image("image 2")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .frame(width: 48, height: 48)
                                        .overlay(RoundedRectangle(cornerRadius: 100)
                                            .stroke(Color .white, lineWidth: 2))
                                    
                                    Image("image 3")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .frame(width: 48, height: 48)
                                        .overlay(RoundedRectangle(cornerRadius: 100)
                                            .stroke(Color .white, lineWidth: 2))
                                    
                                    Image("image 1")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .frame(width: 48, height: 48)
                                        .overlay(RoundedRectangle(cornerRadius: 100)
                                            .stroke(Color .white, lineWidth: 2))
                                    
                                    Image("image 4")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .frame(width: 48, height: 48)
                                        .overlay(RoundedRectangle(cornerRadius: 100)
                                            .stroke(Color .white, lineWidth: 2))
                                    
                                    //                                ZStack {
                                    //                                    Circle()
                                    //                                        .frame(width: 48, height: 48)
                                    //                                        .overlay(RoundedRectangle(cornerRadius: 100)
                                    //                                            .stroke(Color .white, lineWidth: 2))
                                    //                                        .foregroundColor(.gray)
                                    //                                    Text("+12")
                                    //                                }
                                }
                                
                                Spacer()
                                
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundColor(.gray)
                                
                                Text("Participar")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            }
                            Text("Confirmaram presença")
                                .font(.footnote)
                                .fontWeight(.light)
                            
                            //                        .padding(.horizontal, 10)
                            
                            
                            
                            //                        VStack (alignment: .leading, spacing: 10){
                            HStack (spacing: 10){
                                Image(systemName: "calendar")
                                    .foregroundColor(.blue)
                                Text("Quarta, 30 de Agosto - 15:00")
                                
                            }
                            
                            HStack (spacing: 10){
                                Image(systemName: "mappin.and.ellipse")
                                    .foregroundColor(.blue)
                                Text("Cin - UFPE")
                                
                            }
                            //                        }
                            //                        .padding(.horizontal, 10)
                            
                            
                            Text("E aí, galerera do Cin! Vamos dar um tapa na mesa com cartas e blefes? Tanto faz se você é um tubarão das cartas ou apenas começando, todo mundo é bem-vindo! Chame os amigos conheça novas pessoas e venha curtir essa vibe cassino.")
                                .font(.body)
                                .lineLimit(4)
                            //                                .padding()
                            
                            HStack {
                                Text("Comentários")
                                    .font(.title2)
                                    .bold()
                                
                                
                                Spacer()
                                
                                Text("Ver Tudo")
                                    .font(.subheadline)
                                    .bold()
                                    .padding(.trailing)
                                    .foregroundColor(.blue)
                                
                            }
                            //                        .padding(.horizontal)
                            
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Uber saindo da Várzea")
                                        .bold()
                                    Spacer()
                                    
                                    
                                    Text("Há 5 horas")
                                        .fontWeight(.light)
                                        .font(.subheadline)
                                    
                                    
                                }
                                Spacer()
                                
                                Text("Ola pessoal! Alguém saindo da Várzea querendo dividir um Uber no dia do evento? Cola com os de fé!")
                                    .lineLimit(4)
                                
                                
                                
                                HStack{
                                    Image("image 3")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .frame(width: 30, height: 30)
                                        .overlay(RoundedRectangle(cornerRadius: 100)
                                            .stroke(Color .gray, lineWidth: 2))
                                    Text("Ísis Dore")
                                        .font(.footnote)
                                        .fontWeight(.regular)
                                        .foregroundColor(.black)
                                    Spacer()
                                    
                                    Text("5 respostas")
                                        .font(.footnote)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color.blue)
                                    
                                }
                                
                            }
                            .padding()
                            .background(.quaternary)
                            .cornerRadius(10)
                            
                            HStack {
                                Text("Eventos Relacionados")
                                    .font(.title2)
                                    .bold()
                                
                                Spacer()
                                
                                Text("Ver Tudo")
                                    .font(.subheadline)
                                    .bold()
                                    .padding(.trailing)
                                    .foregroundColor(.blue)
                                
                            }
                        }
                        .padding()
                        
                        ScrollView (.horizontal, showsIndicators: true){
                            HStack{
                                Image("cac")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 220, height: 220)
                                    .clipShape(Rectangle())
                                    .cornerRadius(5)
                                
                                Image("Cinbebeda")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 220, height: 220)
                                    .clipShape(Rectangle())
                                    .cornerRadius(5)
                                
                                Image("evento5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 220, height: 220)
                                    .clipShape(Rectangle())
                                    .cornerRadius(5)
                                
                            }
                            
                        }
                        .padding(.leading)
                        //            .padding(.vertical)
                        
                    }
                }
    //            .ignoresSafeArea()
                .navigationTitle("Poker viciante")
            .navigationBarTitleDisplayMode(.inline)
        }

    }

struct testinhos_Previews: PreviewProvider {
    static var previews: some View {
        testinhos()
    }
}
