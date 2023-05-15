//
//  Models.swift
//  HomeWork8
//
//  Created by TrungNV (Macbook) on 14/05/2023.
//

import Foundation

/**
 {
     "userId": 1,
     "id": 1,
     "title": "delectus aut autem",
     "completed": false
 }
 */
struct Todo : Codable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
    
    func toString() -> String {
        return "User id: \(userId) \nId: \(id)\nTitle: \(title)\nCompleted: \(completed)\n\n"
    }
}

/**
 {
     "albumId": 1,
     "id": 1,
     "title": "accusamus beatae ad facilis cum similique qui sunt",
     "url": "https://via.placeholder.com/600/92c952",
     "thumbnailUrl": "https://via.placeholder.com/150/92c952"
 }
 */
struct Photo : Codable {
    var albumId: Int
    var id: Int
    var title: String
    var url: String
    var thumbUrl: String
    
    enum CodingKeys: String, CodingKey {
        case albumId
        case id
        case title
        case url
        case thumbUrl = "thumbnailUrl"
    }
    
    func toString() -> String {
        return "Album id: \(albumId)\nId: \(id)\nTitle: \(title)\nUrl: \(url)\nThumbnail url: \(thumbUrl)\n\n"
    }
}

/**
 {
     "userId": 1,
     "id": 1,
     "title": "quidem molestiae enim"
 }
 */
struct Album: Codable {
    var userId: Int
    var id: Int
    var title: String
    
    func toString() -> String {
        return "User id: \(userId)\nId: \(id)\nTitle: \(title)\n\n"
    }
}

/**
 {
     "postId": 1,
     "id": 1,
     "name": "id labore ex et quam laborum",
     "email": "Eliseo@gardner.biz",
     "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
 }
 */
struct Comment : Codable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    func toString() -> String {
        return "Post id: \(postId)\nId: \(id)\nName: \(name)\nEmail: \(email)\nBody: \(body)\n\n"
    }
}

/**
 {
     "userId": 1,
     "id": 1,
     "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
     "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
 }
 */
struct Post : Codable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
    
    func toString() -> String {
        return "User id: \(userId)\nId: \(id)\nTitle: \(title)\nBody: \(body)\n\n"
    }
}
