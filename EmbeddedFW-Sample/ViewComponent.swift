//
//  ViewComponent.swift
//  EmbeddedFW-Sample
//
//  Created by Shinya Kumagai on 2020/10/01.
//  Copyright © 2020 Shinya Kumagai. All rights reserved.
//

import Core
import Foundation
import NeedleFoundation
import RxSwift

protocol ViewDependency: Dependency {
    var sampleRepository: SampleRepository { get }
    var mainScheduler: SchedulerType { get }
}

class ViewComponent: Component<ViewDependency> {
    
    func inject(to vc: ViewController) {
        vc.sampleRepository = dependency.sampleRepository
        vc.mainScheduler = dependency.mainScheduler
    }
}
