//
//  ViewController.swift
//  TPPhotoEditorExample
//
//  Created by Tomasz Pieczykolan on 06/03/2018.
//  Copyright © 2018 Tomasz Pieczykolan. All rights reserved.
//

import UIKit
import TPPhotoEditor

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    // MARK: - Button actions
    
    @IBAction func choosePhotoButtonPressed() {
        let picker = UIImagePickerController()
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
    @IBAction func openEditorButtonPressed() {
    }
}

extension ViewController: UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        guard let image = info[UIImagePickerControllerOriginalImage] as? UIImage else { return }
        imageView.image = image
        picker.dismiss(animated: true, completion: nil)
    }
}

extension ViewController: UINavigationControllerDelegate {}
