//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Alex Lombry on 29/03/2017.
//  Copyright © 2017 Alex Lombry. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // select image by user
    var selectedImage: String?
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = selectedImage
        
        // load selected image into imageView
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
