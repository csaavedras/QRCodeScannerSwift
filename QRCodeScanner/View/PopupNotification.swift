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
            Spacer()
            Text(isValid ? "¡Bienvenido! Acceso permitido" : "Lo siento, no estás en la lista de invitados")
                .font(.title)
                .multilineTextAlignment(.center) // Centrar el texto incluso si hay un salto de línea
                .padding()
            
            Image(systemName: isValid ? "checkmark.circle.fill" : "xmark.circle.fill")
                .foregroundColor(isValid ? .green : .red)
                .font(.system(size: 60))
                .padding()
            
            Spacer()
            
            Button(action: {
                isPresented = false
            }) {
                Text("Aceptar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(isValid ? Color.green : Color.red)
                    .cornerRadius(10)
                    .frame(maxWidth: 200) // Establecer un ancho máximo para el botón
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 20)
        }
        
        .frame(minWidth: 300, idealWidth: 350, maxWidth: .infinity, minHeight: 200, idealHeight: 250, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(20)
        .padding()
        
    }
}


#Preview {
    PopupNotification(isValid: true, isPresented: .constant(true))
}
