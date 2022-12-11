//
//  ViewController.swift
//  MapBoxProjectExample
//
//  Created by Сергей Клементьев on 11.12.2022.
//


import UIKit
import MapboxMaps

class ViewController: UIViewController {
    
    internal var mapView: MapView!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let myResourceOptions = ResourceOptions(accessToken: "pk.eyJ1Ijoic2VyZ2V5a2xlbWVudGV2IiwiYSI6ImNraHg1M255azBmMHMzN25iOWQwMDJ1ejAifQ.oWj209QMTGaq4LReO49SIQ")
        let myMapInitOptions = MapInitOptions(resourceOptions: myResourceOptions)
        mapView = MapView(frame: view.bounds, mapInitOptions: myMapInitOptions)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.view.addSubview(mapView)
    }
}
