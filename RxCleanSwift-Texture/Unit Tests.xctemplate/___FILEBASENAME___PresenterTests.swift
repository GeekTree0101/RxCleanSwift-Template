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

protocol ___VARIABLE_sceneName___PresenterInputLogic {
    
    var input: PublishRelay<___VARIABLE_sceneName___Models.Model.Response> { get }
}

protocol ___VARIABLE_sceneName___PresenterOutputLogic {
    
    var output: Driver<___VARIABLE_sceneName___Models.Model.ViewModel> { get }
}

class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresenterInputLogic {
    
    var input: PublishRelay<___VARIABLE_sceneName___Models.Model.Response> = .init()

    private let disposeBag = DisposeBag()

    init(interactor: ___VARIABLE_sceneName___InteractorOutputLogic) {
        self.binding(interactor)
    }

    private func binding(_ interactor:  ___VARIABLE_sceneName___InteractorOutputLogic) {
        interactor.output
            .bind(to: input)
            .disposed(by: disposeBag)
    }
}

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresenterOutputLogic {
    
    var output: Driver<___VARIABLE_sceneName___Models.Model.ViewModel> {
        return input.map { _ in return ___VARIABLE_sceneName___Models.Model.ViewModel.init() }
            .asDriver(onErrorJustReturn: ___VARIABLE_sceneName___Models.Model.ViewModel.init())
    }
}
