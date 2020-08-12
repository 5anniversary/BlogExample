//
//  ViewController.swift
//  KakaoMapTest
//
//  Created by 오준현 on 2020/08/12.
//  Copyright © 2020 5anniversary. All rights reserved.
//

import UIKit

import Then
import SnapKit

class ViewController: UIViewController {
    
    let mapView = MTMapView().then {
        $0.setMapCenter(.init(geoCoord: .init(latitude: 37.537229, longitude: 127.005515)), animated: true)
    }

    let po1 = MTMapPOIItem().then{
        $0.markerType = .redPin
        $0.mapPoint = .init(geoCoord: .init(latitude: 37.517229, longitude: 127.005525))
        $0.showAnimationType = .noAnimation
        $0.tag = 1
        $0.customImageName = "map_pin"
    }
    
    let po2 = MTMapPOIItem().then{
        $0.markerType = .redPin
        $0.mapPoint = .init(geoCoord: .init(latitude: 37.537229, longitude: 127.005525))
        $0.showAnimationType = .noAnimation
        $0.tag = 2
    }

    let po3 = MTMapPOIItem().then{
        $0.markerType = .redPin
        $0.mapPoint = .init(geoCoord: .init(latitude: 37.537229, longitude: 127.025525))
        $0.showAnimationType = .noAnimation
        $0.tag = 3
    }

    let po4 = MTMapPOIItem().then{
        $0.markerType = .redPin
        $0.mapPoint = .init(geoCoord: .init(latitude: 37.537229, longitude: 127.105525))
        $0.showAnimationType = .noAnimation
        $0.tag = 4
    }

    let po5 = MTMapPOIItem().then{
        $0.markerType = .redPin
        $0.mapPoint = .init(geoCoord: .init(latitude: 37.437210, longitude: 127.005525))
        $0.showAnimationType = .noAnimation
        $0.tag = 5
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mapView)
                
        mapView.delegate = self
        mapView.baseMapType = .standard
        mapView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        
        mapView.addPOIItems([po1, po2, po3, po4, po5])
        mapView.fitAreaToShowAllPOIItems()
    }

}

extension ViewController: MTMapViewDelegate {
    
}
