//
//  ViewController.swift
//  SpotifyDemo
//
//  Created by projas on 5/19/16.
//  Copyright © 2016 Nearsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageList = [String]()
    var artistList = [String]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let nibName = UINib(nibName: imageViewCell.reusIdentifier(), bundle: nil)
        collectionView.registerNib(nibName, forCellWithReuseIdentifier: imageViewCell.reusIdentifier())
        
        imageList = [
            "aerosmith.jpg",
            "beyonce.jpg",
            "eminem.jpg",
            "santana.jpg",
            "pitbull.jpg",
            "queen.jpg",
            "rammstein.jpg",
            "rihanna.jpg",
            "rollingstones.jpg",
            "sonataArtica.jpg"
        ]
        
        artistList = [
            "Aerosmith",
            "Beyonce",
            "Eminem",
            "Santana",
            "Pitbull",
            "Queen",
            "Rammstein",
            "Rihanna",
            "Rolling Stones",
            "Sonata Artica"
        ]
        
        let bgLayer: CAGradientLayer = BackgroundLayer.blueGradient()
        bgLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(bgLayer, atIndex: 0)
        
        self.collectionView.backgroundColor = UIColor.blackColor()
        self.collectionView.backgroundView = UIView.init(frame: CGRectZero)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) ->
        Int{
            return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(imageViewCell.reusIdentifier(), forIndexPath: indexPath) as! imageViewCell
        cell.imageArtist.image = UIImage(named: imageList[indexPath.row])
        return cell
    }
    
}
