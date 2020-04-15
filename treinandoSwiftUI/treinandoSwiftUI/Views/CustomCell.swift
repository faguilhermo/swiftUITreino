//
//  CustomCell.swift
//  treinandoSwiftUI
//
//  Created by Fabrício Guilhermo on 15/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import SwiftUI

struct CustomCell: View {

    var viagem: Viagem

    var body: some View {
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

struct CustomCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell(viagem: viagens[0]).previewLayout(.fixed(width: 400, height: 230))
    }
}
