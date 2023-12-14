//
//  DataLoader.swift
//  QRCodeScanner
//
//  Created by Camilo Saavedra Salas on 14-12-23.
//

import Foundation


struct DataLoader {
    static func loadMockData() -> [Guest] {
        guard let url = Bundle.main.url(forResource: "MOCK_DATA", withExtension: "json") else {
            print("Error: No se pudo obtener la URL del archivo JSON.")
            return []
        }

        print("URL del archivo JSON:", url)

        guard let data = try? Data(contentsOf: url) else {
            print("Error: No se pudo cargar el contenido del archivo JSON.")
            return []
        }

        print("Datos del archivo JSON cargados correctamente.")

        guard let guests = try? JSONDecoder().decode([Guest].self, from: data) else {
            print("Error: No se pudo decodificar el archivo JSON.")
            return []
        }

        print("Datos decodificados correctamente.")

        return guests
    }

}

struct Guest: Codable {
    var name: String
    var lastName: String
    var email: String
    var code: String
}
