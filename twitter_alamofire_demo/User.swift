//
//  User.swift
//  twitter_alamofire_demo
//
//  Created by Charles Hieger on 6/17/17.
//  Copyright © 2017 Charles Hieger. All rights reserved.
//

import Foundation

class User {
    //user properties
    var name: String
    var screenName: String
    var profileImageURL: String!
    var dictionary: [String: Any]?
    
    private static var _current: User? //to store current user
    
    //Create initializer with dictionary
    init(dictionary: [String: Any]) {
        
        name = dictionary["name"] as! String
        
        screenName = dictionary["screen_name"] as! String
        
        profileImageURL = dictionary["profile_image_url_https"] as! String
        
        self.dictionary = dictionary
    }
        
}
