//
//  Spotify+String.swift
//  SpotifyClone
//
//  Created by Linder Anderson Hassinger Solano    on 6/05/22.
//

import Foundation

class HelperString {
    
    static let imageProfileLink = "https://w0.peakpx.com/wallpaper/715/233/HD-wallpaper-yato-noragami-anime.jpg"
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
    
}
