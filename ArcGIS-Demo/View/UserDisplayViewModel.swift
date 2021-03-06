//
//  UserDisplayViewModel.swift
//  ArcGIS-Demo
//
//  Created by Naresh on 1/2/20.
//  Copyright © 2020 BMS. All rights reserved.
//
import UIKit
import ArcGIS

struct UserDisplayViewModel
{
    let userPortal: AGS
   
    init(userPortal: AGS)
    {
        self.userPortal = userPortal

    }
    
    func displayUserInfo() -> [String]
    {
        var toDisplay: String
        let displayArray: [String] = [("Name: \(self.userPortal.portal.user?.fullName?.description ?? "")"), "Email: \(self.userPortal.portal.user?.email?.description ?? "")",
                                       ("User Name: \(self.userPortal.portal.user?.username?.description ?? "")")
        ]
        
        self.userPortal.portal.user?.organizationID
     return displayArray
    }
    //("Org# : \( self.userPortal.portal.user?.organizationID""),
    
}
