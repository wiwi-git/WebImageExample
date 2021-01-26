//
//  MainViewController.swift
//  WebImageExample
//
//  Created by 위대연 on 2021/01/26.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var imageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.contentMode = .scaleAspectFit
        self.loadImage()
    }
    
    func loadImage() {
        guard let url = URL(string: "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FblnYUx%2FbtqBj7jRanp%2Fw2V66EWmsihkknmGfPKO1K%2Fimg.png") else { return }
        do {
            let imageData = try Data(contentsOf: url)
            let image = UIImage(data: imageData)
            self.imageView.image = image
        } catch let err {
            print(err.localizedDescription)
        }
    }
}

