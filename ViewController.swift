//
//  ViewController.swift
//  globe
//
//  Created by Andy on 5/14/20.
//  Copyright © 2020 Andy. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        let scene = SCNScene() //scn file is a 3-d object
        let position = SCNVector3(0,0.2,-0.9)
        let position2 = SCNVector3(5,0,-1)
        let position3 = SCNVector3(1,0,-1)
        let position4 = SCNVector3(0.5,0,-1)
        let position5 = SCNVector3(-0.5,0,-1)
        let position6 = SCNVector3(-1.3,0,-1)
        let position7 = SCNVector3(-2.3,0,-1)
        let position8 = SCNVector3(-3,0,-1)
        let position9 = SCNVector3(-4,0,-1)
        
        
        let globe = createGlobe(at: SCNVector3(0,0,-1))
        let moon = createMoon(at: position)
        let sun = createSun(at: position2)
        let mercury = createMercury(at: position3)
        let venus = createVenus(at: position4)
        let mars = createMars(at: position5)
        let jupiter = createJupiter(at: position6)
        let saturn = createSaturn(at: position7)
        let uranus = createUranus(at: position8)
        let neptune = createNeptune(at: position9)
        
        let action = SCNAction.rotate(by: 360 * CGFloat((Double.pi)/180), around: SCNVector3(x: 0, y: 1, z: 0), duration: 8)
        let repeatAction = SCNAction.repeatForever(action)
        globe.runAction(repeatAction)
        
//        let action = SKAction.rotate(byAngle:CGFloat.pi, duration:5)
//
//        node.run(SKAction.repeatForever(action), withKey:"orbit")
        
        let action2 = SCNAction.rotate(by:CGFloat(3.14259), around: SCNVector3(x: 0, y: 1, z: 1), duration:5)
        let repeatAction2 = SCNAction.repeatForever(action2)
        moon.runAction(repeatAction2)
        
        scene.rootNode.addChildNode(sun)
        scene.rootNode.addChildNode(globe)
        scene.rootNode.addChildNode(moon)
        scene.rootNode.addChildNode(mercury)
        scene.rootNode.addChildNode(venus)
        scene.rootNode.addChildNode(mars)
        scene.rootNode.addChildNode(jupiter)
        scene.rootNode.addChildNode(saturn)
        scene.rootNode.addChildNode(uranus)
        scene.rootNode.addChildNode(neptune)

        // Set the scene to the view
        sceneView.scene = scene
    }
    
    func createNeptune(at position: SCNVector3) -> SCNNode{
        let sphere = SCNSphere(radius: 0.19)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "art.scnassets/neptune.jpg")
        sphere.materials[0] = material
        sphere.materials[0].isDoubleSided = true
        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.position = position
        return sphereNode
    }
    
    func createUranus(at position: SCNVector3) -> SCNNode{
        let sphere = SCNSphere(radius: 0.2)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "art.scnassets/uranus.jpg")
        sphere.materials[0] = material
        sphere.materials[0].isDoubleSided = true
        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.position = position
        return sphereNode
    }
    
    func createSaturn(at position: SCNVector3) -> SCNNode{
        let sphere = SCNSphere(radius: 0.28)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "art.scnassets/saturn.jpg")
        sphere.materials[0] = material
        sphere.materials[0].isDoubleSided = true
        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.position = position
        return sphereNode
    }
    
    func createJupiter(at position: SCNVector3) -> SCNNode{
        let sphere = SCNSphere(radius: 0.3)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "art.scnassets/jupiter.jpg")
        sphere.materials[0] = material
        sphere.materials[0].isDoubleSided = true
        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.position = position
        return sphereNode
    }
    
    func createMars(at position: SCNVector3) -> SCNNode{
        let sphere = SCNSphere(radius: 0.08)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "art.scnassets/mars.jpg")
        sphere.materials[0] = material
        sphere.materials[0].isDoubleSided = true
        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.position = position
        return sphereNode
    }
    
    func createVenus(at position: SCNVector3) -> SCNNode{
        let sphere = SCNSphere(radius: 0.15)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "art.scnassets/venus.jpg")
        sphere.materials[0] = material
        sphere.materials[0].isDoubleSided = true
        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.position = position
        return sphereNode
    }
    
    func createMercury(at position: SCNVector3) -> SCNNode{
        let sphere = SCNSphere(radius: 0.07)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "art.scnassets/mercury.jpg")
        sphere.materials[0] = material
        sphere.materials[0].isDoubleSided = true
        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.position = position
        return sphereNode
    }
    
    func createSun(at position: SCNVector3) -> SCNNode{
        let sphere3 = SCNSphere(radius: 3)
        let material3 = SCNMaterial()
        material3.diffuse.contents = UIImage(named: "art.scnassets/sun.jpg")
        sphere3.materials[0] = material3
        sphere3.materials[0].isDoubleSided = true
        let sphereNode = SCNNode(geometry: sphere3)
        sphereNode.position = position
        return sphereNode
    }
    
    func createMoon(at position: SCNVector3) -> SCNNode{
        let sphere2 = SCNSphere(radius: 0.01)
        let material2 = SCNMaterial()
        material2.diffuse.contents = UIImage(named: "art.scnassets/moon.jpg")
        sphere2.materials[0] = material2
        sphere2.materials[0].isDoubleSided = true
        let sphereNode = SCNNode(geometry: sphere2)
        sphereNode.position = position
        return sphereNode
    }
    
    func createGlobe(at position: SCNVector3) -> SCNNode{
        let sphere = SCNSphere(radius: 0.09)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "art.scnassets/earth.jpeg")
        sphere.materials[0] = material
        sphere.materials[0].isDoubleSided = true
        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.position = position
        return sphereNode
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration() //tracks what camera is seeing

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let touch = touches.first
//        let location = touch?.location(in: sceneView)
//        let hitResults = sceneView.hitTest(location!, types: .featurePoint)
//
//        if let hitTestResult = hitResults.first {
//            let transform = hitTestResult.worldTransform
//            let position = SCNVector3(x: transform.columns.3.x, y: transform.columns.3.y, z: transform.columns.3.z)
//
//            let newEarth = EarthNode()
//            newEarth.position = position
//
//            sceneView.scene.rootNode.addChildNode(newEarth)
//            }
//
//    }
    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
