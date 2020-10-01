//
//  CoreComponent.swift
//  Core
//
//  Created by Shinya Kumagai on 2020/10/01.
//  Copyright © 2020 Shinya Kumagai. All rights reserved.
//

import Foundation
import NeedleFoundation
import RxSwift

public class CoreComponent: BootstrapComponent {}

// MARK: - Common

public extension CoreComponent {
    var mainScheduler: SchedulerType {
        MainScheduler.instance
    }
}

// MARK: - Repository

public extension CoreComponent {
    var sampleRepository: SampleRepository {
        shared {
            SampleRepositoryImpl()
        }
    }
}
