//
//  ApiViewControllerEx.swift
//  HomeWork8
//
//  Created by TrungNV (Macbook) on 14/05/2023.
//

import Foundation
import UIKit

extension ApiViewController {
    func showTodos(_ todos: [Todo]) {
        var text = ""
        todos.forEach { todo in
            text.append(todo.toString())
        }
        tvPesponseData.text = text
    }
    
    func showPhotos(_ photos: [Photo]) {
        var text = ""
        photos.forEach { photo in
            text.append(photo.toString())
        }
        tvPesponseData.text = text
    }
    
    func showAlbums(_ albums: [Album]) {
        var text = ""
        albums.forEach { album in
            text.append(album.toString())
        }
        tvPesponseData.text = text
    }
    
    func showComments(_ comments: [Comment]) {
        var text = ""
        comments.forEach { comment in
            text.append(comment.toString())
        }
        tvPesponseData.text = text
    }
    
    func showPosts(_ posts: [Post]) {
        var text = ""
        posts.forEach { post in
            text.append(post.toString())
        }
        tvPesponseData.text = text
    }
    
    func getData<T : Decodable>(_ path: String, _ dataType: T.Type, _ callback: @escaping ([T]?) -> Void) {
        self.loadingView.isHidden = false
        self.tvPesponseData.text = ""
        
        let urlSession = URLSession(configuration: .ephemeral)
        let urlRequest = URLRequest(url: URL(string: path)!)
        
        let dataTask = urlSession.dataTask(with: urlRequest) { data, urlResponse, error in
            guard let data = data else {
                print("data nil")
                callback(nil)
                return
            }
            
            do {
                let model = try JSONDecoder().decode([T].self, from: data)
                callback(model)
            } catch let exception {
                print("\(exception.localizedDescription)")
                callback(nil)
            }
        }
        dataTask.resume()
    }
}
