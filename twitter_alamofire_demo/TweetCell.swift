//
//  TweetCell.swift
//  twitter_alamofire_demo
//
//  Created by Charles Hieger on 6/18/17.
//  Copyright © 2017 Charles Hieger. All rights reserved.
//

import UIKit
import Alamofire

class TweetCell: UITableViewCell {
    
    @IBOutlet weak var tweetTextLabel: UILabel!
    @IBOutlet weak var userHandleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var screenNameLabel: UILabel!
    @IBOutlet weak var profilePhotoImageView: UIImageView!
    
    var tweet: Tweet! {
        didSet {
            tweetTextLabel.text = tweet.text
            userHandleLabel.text = "@\(tweet.user.screenName)" //username
            screenNameLabel.text = tweet.user.name
            dateLabel.text = tweet.createdAtString
            
            profilePhotoImageView.image = nil
           // profilePhotoImageView.af_setImage(withURL: URL(string: tweet.user.profileImageURL)!)
            profilePhotoImageView.clipsToBounds = true
            profilePhotoImageView.layer.masksToBounds = true
            profilePhotoImageView.layer.borderColor = UIColor.blue.cgColor
            profilePhotoImageView.layer.cornerRadius = profilePhotoImageView.frame.height/2
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
