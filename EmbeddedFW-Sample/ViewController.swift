//
//  ViewController.swift
//  EmbeddedFW-Sample
//
//  Created by Shinya Kumagai on 2020/10/01.
//  Copyright © 2020 Shinya Kumagai. All rights reserved.
//

import Core
import PKHUD
import RxSwift
import UIKit

class ViewController: UIViewController {
    
    var sampleRepository: SampleRepository!
    var mainScheduler: SchedulerType!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appComponent.viewComponent
            .inject(to: self)
        
        _ = sampleRepository.getSampleText()
            .delay(.milliseconds(500), scheduler: mainScheduler)
            .observeOn(mainScheduler)
            .subscribe(onSuccess: { text in
                print("text: \(text)")
                HUD.flash(.label(text), delay: 3.0)
            })    
    }
}

