//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit
import RxSwift
import RxCocoa

protocol ___VARIABLE_sceneName___RouterLogic {
    
    var presentViewController: Binder<Void> { get }
    var dismissViewController: Binder<Void> { get }
}

protocol  ___VARIABLE_sceneName___DataPassing {
    
    var dataStore: ___VARIABLE_sceneName___DataStore { get set }
}

class ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___DataPassing {
    
    weak var viewController: UIViewController?
    var dataStore: ___VARIABLE_sceneName___DataStore
    
    init(dataStore: ___VARIABLE_sceneName___DataStore) {
        self.dataStore = dataStore
    }
}

extension ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___RouterLogic {

    var presentViewController: Binder<Void> {
        return Binder(self) { router, _ in 
            // TODO: present view controller
        }
    }

    var dismissViewController: Binder<Void> {
        return Binder(self) { router, _ in 
            // TODO: dismiss view controller
        }
    }
}
