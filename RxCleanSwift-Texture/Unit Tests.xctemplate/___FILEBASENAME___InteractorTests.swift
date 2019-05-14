//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import XCTest
import RxTest

import RxSwift
import RxCocoa

@testable import ___PROJECTNAME___

class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
    
    var interactor: ___VARIABLE_sceneName___Interactor!
    var disposeBag = DisposeBag()

    override func setUp() {
        self.disposeBag = DisposeBag()
        self.interactor = ___VARIABLE_sceneName___Interactor.init()
    }

    func testIO() {
        let scheduler = TestScheduler.init(initialClock: 0)
        
        scheduler.createColdObservable(
            [.next(100, ___VARIABLE_sceneName___Models.Model.Request()),
             .next(200, ___VARIABLE_sceneName___Models.Model.Request())
            ])
            .bind(to: interactor.input)
            .disposed(by: disposeBag)
        
        let outputEvents = scheduler.createObserver(___VARIABLE_sceneName___Models.Model.Response.self)
        
        interactor.output
            .bind(to: outputEvents)
            .disposed(by: disposeBag)
        
        scheduler.start()
        
        XCTAssertEqual(outputEvents.events.count, 2)
    }
}
