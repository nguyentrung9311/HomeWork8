//
//  ApiViewController.swift
//  HomeWork8
//
//  Created by TrungNV (Macbook) on 14/05/2023.
//

import UIKit

class ApiViewController: UIViewController {
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    @IBOutlet weak var tvPesponseData: UITextView!
    
    let todosUrl = "https://jsonplaceholder.typicode.com/todos"
    let photosUrl = "https://jsonplaceholder.typicode.com/photos"
    let albumsUrl = "https://jsonplaceholder.typicode.com/albums"
    let commentsUrl = "https://jsonplaceholder.typicode.com/comments"
    let postsUrl = "https://jsonplaceholder.typicode.com/posts"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onBackClicked(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func onGetTodosClicked(_ sender: Any) {
        getData(todosUrl, Todo.self) { todos in
            guard let todos = todos else {
                self.tvPesponseData.text = "Convert data error"
                return
            }
            
            DispatchQueue.main.async { [self] in
                loadingView.isHidden = true
                showTodos(todos)
            }
        }
    }
    
    @IBAction func onGetPhotosClicked(_ sender: Any) {
        getData(photosUrl, Photo.self) { photos in
            guard let photos = photos else {
                self.tvPesponseData.text = "Convert data error"
                return
            }
            
            DispatchQueue.main.async { [self] in
                loadingView.isHidden = true
                showPhotos(photos)
            }
        }
    }
    
    @IBAction func onGetAlbumsClicked(_ sender: Any) {
        getData(albumsUrl, Album.self) { albums in
            guard let albums = albums else {
                self.tvPesponseData.text = "Convert data error"
                return
            }
            
            DispatchQueue.main.async { [self] in
                loadingView.isHidden = true
                showAlbums(albums)
            }
        }
    }
    
    @IBAction func onGetCommentsClicked(_ sender: Any) {
        getData(commentsUrl, Comment.self) { comments in
            guard let comments = comments else {
                self.tvPesponseData.text = "Convert data error"
                return
            }
            
            DispatchQueue.main.async { [self] in
                loadingView.isHidden = true
                showComments(comments)
            }
        }
    }
    
    @IBAction func onGetPostsClicked(_ sender: Any) {
        getData(postsUrl, Post.self) { posts in
            guard let posts = posts else {
                self.tvPesponseData.text = "Convert data error"
                return
            }
            
            DispatchQueue.main.async { [self] in
                loadingView.isHidden = true
                showPosts(posts)
            }
        }
    }
}
