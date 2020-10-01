//
//  SampleRepository.swift
//  Core
//
//  Created by Shinya Kumagai on 2020/10/01.
//  Copyright © 2020 Shinya Kumagai. All rights reserved.
//

import Foundation
import RxSwift

public protocol SampleRepository {    
    func getSampleText() -> Single<String>
}
