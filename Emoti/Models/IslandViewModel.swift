//
//  IslandViewModel.swift
//  Emoti
//
//  Created by 김 형석 on 6/1/24.
//

import Foundation

import Observation
import SwiftUI
import RealityKit
import RealityKitContent

@Observable
class IslandViewModel
{
    
    var islandId: String = "IslandArea"
    let cubeSize:Float = 0.05
    private var contentEntity = Entity()
    private var modelEntity: ModelEntity? = nil
    
    func setupContentEntity() -> Entity {
        
        var positions: [SIMD3<Float>] = []
        for x in 0..<4 {
            for y in 0..<2 {
                for z in 0..<4 {
                    let position = SIMD3<Float>(
                        Float(x-2)*cubeSize,
                        Float(y-1)*cubeSize,
                        Float(z-2)*cubeSize
                    )
                    positions.append(position)
                }
            }
        }
        
        for position in positions {
            let modelEntity=ModelEntity()
            modelEntity.components.set(ModelComponent(
                mesh: .generateBox(size: SIMD3<Float>(cubeSize, cubeSize, cubeSize),cornerRadius: cubeSize*0.1),
                materials: [SimpleMaterial(color: .white ,roughness: 0.8, isMetallic: false)]
            ))
            print(position)
            modelEntity.position = position
//            modelEntity.transform.translation=position
            contentEntity.addChild(modelEntity)
        }
//        self.modelEntity = modelEntity
        
        return contentEntity
    }
}
