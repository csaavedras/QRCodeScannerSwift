//
//  PopupNotification.swift
//  QRCodeScanner
//
//  Created by Camilo Saavedra Salas on 14-12-23.
//

import SwiftUI

struct PopupNotification: View {
    @State var isValid: Bool = false
    @Binding var isPresented: Bool
    var body: some View {
        VStack {
            Text(isValid ? "Entrada válida" : "Código no válido")
                .font(.title)
                .padding()
            
            Image(systemName: isValid ? "checkmark.circle.fill" : "xmark.circle.fill")
                .foregroundColor(isValid ? .green : .red)
                .font(.system(size: 60))
                .padding()
            
            Button("Aceptar") {
                isPresented = false
            }
            .padding()
        }
    }
}


