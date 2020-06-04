//
//  VideoListScreen.swift
//  UITableViewTutorial
//
//  Created by Evgeniy Poznyak on 6/3/20.
//  Copyright © 2020 Evgeniy Poznyak. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        
//        tableView.delegate = self
//        tableView.dataSource = self
    }
    
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        let video1 = Video(image: #imageLiteral(resourceName: "pic2"), title: "Dog 1")
        let video2 = Video(image: #imageLiteral(resourceName: "pic3"), title: "Dog 2")
        let video3 = Video(image: #imageLiteral(resourceName: "pic1"), title: "Dog 3")
        let video4 = Video(image: #imageLiteral(resourceName: "pic5"), title: "Cat 1")
        let video5 = Video(image: #imageLiteral(resourceName: "pic6"), title: "Cat 2")
        let video6 = Video(image: #imageLiteral(resourceName: "pic4"), title: "Cat 3")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
    }
    
}


// MARK: Fetching data to the table

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video)
        return cell
    }
    
    
}
