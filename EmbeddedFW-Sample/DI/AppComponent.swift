//
//  AppComponent.swift
//  EmbeddedFW-Sample
//
//  Created by Shinya Kumagai on 2020/10/01.
//  Copyright © 2020 Shinya Kumagai. All rights reserved.
//

import Core
import Foundation
import NeedleFoundation
import UIKit

class AppComponent: Component<EmptyDependency> {
}

extension CoreComponent {
    var appComponent: AppComponent {
        AppComponent(parent: self)
    }
}

extension UIViewController {
    var appComponent: AppComponent {
        return (UIApplication.shared.delegate as! AppDelegate).component
    }
}

// MARK: -

extension AppComponent {
    var viewComponent: ViewComponent {
        return ViewComponent(parent: self)
    }
}
