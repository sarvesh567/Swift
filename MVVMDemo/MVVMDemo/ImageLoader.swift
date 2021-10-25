//
//  ImageLoader.swift
//  MVVMDemo
//
//  Created by Sarvesh Patel on 23/09/21.
//

import Foundation
import UIKit
class ImageLoader {
    private let cache = NSCache<NSString, UIImage>()
    final private let placeHolderImage = "placeholder"
    
    // MARK: - Singleton
    static let shared = ImageLoader()
    
    func cacheImage(from url: URL?) -> UIImage {
        guard  let url = url else {
            return UIImage(named: self.placeHolderImage)!.resizeImage()
        }
        let cachedImage = cache.object(forKey: url.absoluteString as NSString)
        if cachedImage == nil {
            downloadImage(url.absoluteString as NSString, from: url)
        }
        return cache.object(forKey: url.absoluteString as NSString) ?? UIImage(named: self.placeHolderImage)!.resizeImage()
    }
    
    final private func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    final private func downloadImage(_ key: NSString, from url: URL) {
        getData(from: url) { [weak self] data, response, error in
            guard let data = data, error == nil else { return }
            DispatchQueue.main.async() {
                if let image = UIImage(data: data) {
                    self?.cache.setObject(image.resizeImage(), forKey: key)
                }
            }
        }
    }
}
extension UIImage {
    
    func resizeImage() -> UIImage {
        let size = CGSize(width: 30, height: 60)
        UIGraphicsBeginImageContext(size)
        draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        return UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
    }
}
