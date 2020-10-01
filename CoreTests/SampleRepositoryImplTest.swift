//
//  SampleRepositoryImplTest.swift
//  CoreTests
//
//  Created by Shinya Kumagai on 2020/10/01.
//  Copyright © 2020 Shinya Kumagai. All rights reserved.
//

@testable import Core
import Nimble
import RxSwift
import RxBlocking
import XCTest

class SampleRepositoryImplTest: XCTestCase {
    
    private var repository: SampleRepositoryImpl!

    override func setUpWithError() throws {
        repository = SampleRepositoryImpl()
    }
    
    func test_helloWorld() {
        expect { try self.repository.getSampleText().toBlocking().first()! }
            == "Hello, world!!"
    }
}
