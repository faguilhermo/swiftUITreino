//
//  ContentView.swift
//  treinandoSwiftUI
//
//  Created by Fabrício Guilhermo on 15/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var body: some View {
        GeometryReader { view in
            VStack {
                HeaderView().frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 180 : 280, alignment: .top)
                List(viagens) { viagem in
                    CustomCell(viagem: viagem)
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
