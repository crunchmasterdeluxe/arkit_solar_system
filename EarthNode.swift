//
//  EarthNode.swift
//  globe
//
//  Created by Andy on 5/14/20.
//  Copyright © 2020 Andy. All rights reserved.
//

import SceneKit

class EarthNode: SCNNode{
    override init() {
        super.init()
        self.geometry = SCNSphere(radius: 0.2)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named:"art.scnassets/earth.jpeg")
//        self.geometry?.firstMaterial?.specular.contents = UIImage(named:"Specular")
//        self.geometry?.firstMaterial?.emission.contents = UIImage(named:"Emission")
//        self.geometry?.firstMaterial?.normal.contents = UIImage(named:"Normal")
        self.geometry?.firstMaterial?.isDoubleSided = true
        self.geometry?.firstMaterial?.transparency = 1
        self.geometry?.firstMaterial?.shininess = 50
        
        let action = SCNAction.rotate(by: 360 * CGFloat((Double.pi)/180), around: SCNVector3(x: 0, y: 0, z: -0.3), duration: 8)
        
        let repeatAction = SCNAction.repeatForever(action)
        self.runAction(repeatAction)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
