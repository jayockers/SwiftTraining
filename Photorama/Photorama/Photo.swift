//
//  Photo.swift
//  Photorama
//
//  Created by Jay Ockers on 4/19/18.
//  Copyright © 2018 Jay Ockers. All rights reserved.
//

import Foundation
class Photo {
    let title: String
    let remoteURL: URL
    let photoID: String
    let dateTaken: Date
    init(title: String, photoID: String, remoteURL: URL, dateTaken: Date) {
        self.title = title
        self.photoID = photoID
        self.remoteURL = remoteURL
        self.dateTaken = dateTaken
    }
}
