import UIKit

//
//  ViewController.swift
//  ConcurrencyDemo
//
//  Created by ANJALI SHARMA on 18/03/26.
//
//UIImage (The Data): This is a non-visual object. It lives in the device's memory (RAM). It contains the pixels, the size, and the scale of the image. It doesn't "appear" on the screen by itself.
//UIImageView (The Container): This is a View (a UI element). It is the "frame" you drag onto your Storyboard. To show an image, you tell the UIImageView which UIImage to hold.
//Data: When you download from a URL, you get a "bucket of bytes" (binary 1s and 0s).
//UIImage(data:): This is an initializer. It looks at those bytes and tries to "decode" them. If the bytes represent a valid JPEG or PNG, it creates a UIImage object. If the bytes are corrupted or not an image, it returns nil
//Once you have a UIImage object, you can ask it questions:
//.size: Returns the width and height (e.g., 200x200).
//.scale: Tells you if it’s a standard image, @2x, or @3x (for Retina displays).
//.cgImage: Allows you to drop down into Core Graphics if you want to do low-level pixel manipulation (math-heavy stuff).





// top level -actor (more efficient) -if two downloads are finished and they try to append the array at the same time, the actor helps it queue, lets append one image and next to avoid crashing.
actor ImageStore {
    var images: [UIImage] = []      //creating an empty array to store images
    func add(_ image: UIImage) { self.images.append(image) }  //function to add images in the array
}

// THE MANAGER (Top Level)  -downloading all the images from here
class ImageManager {
    let store = ImageStore()
    
    func downloadFeaturedImage() async throws -> [UIImage] {    //async is used here because this might take a while so it is suspended so the UI shouldn't freeze
        guard let url1 = URL(string: "https://picsum.photos/id/300/300"),
              let url2 = URL(string: "https://picsum.photos/id/200/300") else {
            throw URLError(.badURL)   //this function can fail
        }
        async let image1 = try downloadSingle(url: url1)   //Parallel: both images download at the same time instead of waiting one after the other
        async let image2 = try downloadSingle(url: url2)
        return try await [image1, image2] //returns when both the images are ready together
    }
    
    func downloadSingle(url: URL) async throws -> UIImage {
        let (data, _) = try await URLSession.shared.data(from: url)
        guard let image = UIImage(data: data) else { throw URLError(.cannotDecodeContentData) }
        return image
    }
}

// THE VIEW CONTROLLER
class ViewController: UIViewController {
    
    let imageView = UIImageView()
    let manager = ImageManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        // Since downloadFeaturedImage is ASYNC, we must wrap it in a Task
        Task {
            do {
                let images = try await manager.downloadFeaturedImage()
                
                //Draws the image
                await MainActor.run {
                    if let firstImage = images.first {
                        self.imageView.image = firstImage
                        // Change the background to clear so the gray doesn't peek through
                        self.imageView.backgroundColor = .clear
                        print("Successfully updated the UI with the image!")
                    }
                }
            } catch {
                print("Download Error: \(error)")
            }
        }
        
        func setupUI() {
            view.backgroundColor = .white
            imageView.frame = CGRect(x: 100, y: 100, width: 300, height: 300)
            view.addSubview(imageView)
            imageView.backgroundColor = .lightGray
        }
    }
}
