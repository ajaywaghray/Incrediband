//
//  ResultProfileViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 10/1/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import Foundation
import UIKit

class ResultProfileViewController: UIViewController{
    @IBOutlet var profilePhoto : UIImageView!
    @IBOutlet var instrumentBackground : UIImageView!
    @IBOutlet var mutualFriend1 : UIImageView!
    @IBOutlet var mutualFriend2 : UIImageView!
    @IBOutlet var mutualFriend3 : UIImageView!
    @IBOutlet var userName : UILabel!
    @IBOutlet var userSkill : UILabel!
    @IBOutlet var userInstrument : UILabel!
    @IBOutlet var userLocation : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userName.text = userInfo.userName
        userSkill.text = userInfo.skillLevel
        userInstrument.text = userInfo.instrument
        
        // Loading an example image in profile image for now.
        let url = NSURL(string: "http://comedycentral.mtvnimages.com/images/shows/chappelle/videos/season_2/CHAPPELLE_02_0204_RICKJAMES_640x360.jpg?")
        var err: NSError?
        var imageData :NSData? = NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &err)
        var bgImage = UIImage(data:imageData!)
        profilePhoto.image = bgImage
        
        
        // Shows right background image depending on instrument selection for the user
        if(userInfo.instrument == "Guitar"){
            instrumentBackground.image = UIImage(named: "guitarBackground")
        }
        
        if(userInfo.instrument == "Bass"){
            instrumentBackground.image = UIImage(named: "bassBackground")
        }
        
        if(userInfo.instrument == "Vocals"){
            instrumentBackground.image = UIImage(named: "vocalsBackground")
        }
        
        if(userInfo.instrument == "Drums"){
            instrumentBackground.image = UIImage(named: "drumsBackground")
        }
        
        //Shows mutual friends eventually
        mutualFriend1.image = UIImage(named: "guitarBackground")
        mutualFriend2.image = UIImage(named: "vocalsBackground")
        mutualFriend3.image = UIImage(named: "drumsBackground")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}