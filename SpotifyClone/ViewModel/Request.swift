//
//  Request.swift
//  SpotifyClone
//
//  Created by Linder Anderson Hassinger Solano    on 6/05/22.
//

import Foundation

class Request {
    
    let token = "BQCrbjyUqXGcZHznZUJ-ngiEsm0ZvdUDODKDr82o3uEDq8RJHhTs3LPeWsDBp4Hj4xT-6ExPjuMH527Zp4Jy7cv_zglhCXkM7CAQkeQy48GL56X-mR35-76AmCTUaAyMHuHYh1jgB6VBot5U2hgdj4f_AgsvAFWQxzoMexlfcs0dWSp7rsMITw"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    // ojo recuerden que si un type tiene el ? es porque puede ser nil
    // en este caso estamos diciendo que nuestra funcion retorna un Data o nil
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
}
