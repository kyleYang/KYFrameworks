//
//  BaseViewController.swift
//  KYFrameworks
//
//  Created by Kyle on 2017/9/20.
//

import UIKit
//import SnapKit

open class BaseViewController: UIViewController{

    //MARK: read value for if it's first in
    open private(set) var isFirstAppear: Bool = true
    open private(set) var isAppear: Bool = false
    private var enterCount = 0

    //MARK: value for shoule load data
    open var isShowLoadingView : Bool = false
    open var isShouldLoadData : Bool = true
    

    open var customTitleItem: UINavigationItem?


    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.setup()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    override open func viewDidLoad() {
        super.viewDidLoad()

        self.automaticallyAdjustsScrollViewInsets = true
        self.extendedLayoutIncludesOpaqueBars = true
        self.edgesForExtendedLayout = UIRectEdge.all
//        self.view.backgroundColor = UIColor(0xFFFFFF)

        self.buildVariable()
        self.buildViewModel()
        self.buildUI()
        self.buildRx()

    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if self.isShowLoadingView && self.enterCount == 0 {
            self.showLoadingView()
        }else if self.isShouldLoadData && self.enterCount == 0 {
            self.contentRefresh()
        }
    }

    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.isAppear = true
        self.enterCount += 1
    }

    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.isAppear = false
    }

    open override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }




    //MARK: method for init , before viewDidLoad
    public func setup() {
        self.hidesBottomBarWhenPushed = true
    }

    // build variable
    public func buildVariable() {
    }

    // build view model when for MVVM
    public func buildViewModel() {
    }

    // build interface
    public func buildUI() {
    }

    // build rxswift bind
    public func buildRx() {

    }


    //MARK: public method for override
    public func showLoadingView(){

    }

    public func hiddenLoadingView(){

    }

    public func showErrorView(){

    }

    public func hiddenErrorView(){

    }

    //inicateMethod

    //MARK: viewcontroller system appear and system method
    open override var prefersStatusBarHidden: Bool{
        return false
    }

    open override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

    open override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation{
        return .fade
    }

    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return .portrait
    }

    open override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation{
        return .portrait
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}


//MARK: network, which should be override when you what's load data
extension BaseViewController {
    //MARK: content refresh when first in
    open func contentRefresh(){

    }
    //MARK: content load more
    open func contentLoadMore(){

    }
}

