//
//  SampleRepositoryImpl.swift
//  Core
//
//  Created by Shinya Kumagai on 2020/10/01.
//  Copyright © 2020 Shinya Kumagai. All rights reserved.
//

import FirebaseAnalytics
import RxSwift

class SampleRepositoryImpl: SampleRepository {
    
    func getSampleText() -> Single<String> {
        return Single.just("Hello, world!!")
    }
    
    func setAnalyticsCollectionEnabled(_ enabled: Bool) {
        Analytics.setAnalyticsCollectionEnabled(enabled)
    }
}
