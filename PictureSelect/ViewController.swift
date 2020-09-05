//
//  ViewController.swift
//  PictureSelect
//
//  Created by JillOU on 2020/9/5.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func choosepic(_ sender: UIButton) {
        let controller = UIImagePickerController()
        //controller.sourceType = .photoLibrary//選照片功能用這個
        controller.sourceType = .camera//照相功能用這個
        controller.delegate = self
        present(controller, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        imageView.image = image
        dismiss(animated: true, completion: nil)
    }
}

