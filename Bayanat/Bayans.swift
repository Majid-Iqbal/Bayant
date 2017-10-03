//
//  Bayans.swift
//  Bayanat
//
//  Created by Majid on 24/04/2017.
//  Copyright © 2017 Majid. All rights reserved.
//

import Foundation


class Bayans{
    
    private var _imageUrl :String!
    private var _videoUrl :String!
    private var _videoTitle :String!
    


     init(imageUrl:String, videoUrl:String,videoTitle:String){
    
        _imageUrl = imageUrl
        _videoUrl = videoUrl
        _videoTitle = videoTitle
    
}

    var imageUrl :String{
    
    return _imageUrl
    }
    
    var videoUrl :String{
        return _videoUrl
    }
    
    var videoTitle :String{
        
        return _videoTitle
    }
    

}
