//
//  MostPopularMovies.swift
//  MovieQuiz
//
//  Created by Vadim Nuretdinov on 16.01.2023.
//

import Foundation

struct Movies: Codable {
    let errorMessage: String
    let items: [MovieData]
}

struct MovieData: Codable, Hashable {
    let title: String
    let rating: String
    let imageURL: URL
    var resizedImageURL: URL {
        // создаем строку из адреса
        let urlString = imageURL.absoluteString
        // обрезаем лишнюю часть и добавляем модификатор желаемого качества
        let imageUrlString = urlString.components(separatedBy: "._")[0] + "._V0_UX600_.jpg"
        // пытаемся создать новый адрес, если не получается возвращаем старый
        guard let newURL = URL(string: imageUrlString) else {
            return imageURL
        }
        return newURL
    }
    
    private enum CodingKeys: String, CodingKey {
        case title = "fullTitle"
        case rating = "imDbRating"
        case imageURL = "image"
    }
    
}
