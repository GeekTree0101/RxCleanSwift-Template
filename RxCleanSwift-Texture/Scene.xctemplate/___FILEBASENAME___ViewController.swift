//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import AsyncDisplayKit
import RxSwift
import RxCocoa

class ___VARIABLE_sceneName___ViewController: ASViewController<ASDisplayNode> {

    public var presenter: ___VARIABLE_sceneName___PresenterOutputLogic?
    public var interactor: ___VARIABLE_sceneName___InteractorInputLogic?
    public var router: (___VARIABLE_sceneName___RouterLogic & ___VARIABLE_sceneName___DataPassing)?
    private let disposeBag = DisposeBag()

    init() {
        super.init(node: ASDisplayNode.init())
        self.configureNode()
        self.configureVIPCycle()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureVIPCycle() {
        let viewController = self
        let interactor = ___VARIABLE_sceneName___Interactor.init()
        let presenter = ___VARIABLE_sceneName___Presenter.init(interactor: interactor)
        let router = ___VARIABLE_sceneName___Router.init(dataStore: interactor)
        router.viewController = viewController
        viewController.presenter = presenter
        viewController.interactor = interactor
        viewController.router = router
    }

}

extension ___VARIABLE_sceneName___ViewController {

    private func configureNode() {
        self.node.automaticallyManagesSubnodes = true
        self.node.automaticallyRelayoutOnSafeAreaChanges = true
        self.node.layoutSpecBlock = { [weak self] (_, constrainedSize) -> ASLayoutSpec in
            return self?.layoutSpecThatFits(constrainedSize) ?? ASLayoutSpec()
        }
    }

    private func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        // TODO: build layoutSpec
        return ASLayoutSpec()
    }
}
