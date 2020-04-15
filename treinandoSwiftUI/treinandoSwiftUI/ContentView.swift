//
//  ContentView.swift
//  treinandoSwiftUI
//
//  Created by Fabrício Guilhermo on 15/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("viagens")
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 50)
                    Text("ESPECIAL")
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    Text("BRASIL")
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .font(.custom("Avenir Black", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                }
                .frame(width: view.size.width, height: 190, alignment: .top)
                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))

                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    }
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(#colorLiteral(red: 0.2113958895, green: 0.03864551708, blue: 0.5749527812, alpha: 1)), lineWidth: 10))
                    .background(Color(#colorLiteral(red: 0.2113958895, green: 0.03864551708, blue: 0.5749527812, alpha: 1)))
                    .offset(x: 50)

                    Spacer()

                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    }
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(#colorLiteral(red: 0.2113958895, green: 0.03864551708, blue: 0.5749527812, alpha: 1)), lineWidth: 10))
                    .background(Color(#colorLiteral(red: 0.2113958895, green: 0.03864551708, blue: 0.5749527812, alpha: 1)))
                    .offset(x: -50)
                }
                .offset(y: -25)

                List(viagens) { viagem in
                    VStack(alignment: .leading) {
                        Text(viagem.titulo)
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        Image(viagem.imagem)
                            .resizable()
                        .frame(height: 160)
                        HStack {
                            Text(viagem.quantidadeDeDias)
                                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            Spacer()
                            Text("R$ " + viagem.valor)
                                .foregroundColor(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
                                .bold()
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
