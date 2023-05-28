//
//  ViewController.swift
//  Sample-ViewController-SwiftUI
//
//  Created by haruman on 2023/05/16.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    @IBAction func segmentedSelect(_ sender: Any) {
        let index = segmentedControl.selectedSegmentIndex
        
        switch index {
        case 0:
            let controller0 = UIHostingController(rootView: SegmentedSwiftUIView0())
            addChild(controller0)
            view.addSubview(controller0.view)
            controller0.didMove(toParent: self)
            controller0.view.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                controller0.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                controller0.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ])
            print("セグメント０")
            break
        case 1:
            let controller1 = UIHostingController(rootView: SegmentedSwiftUIView1())
            addChild(controller1)
            view.addSubview(controller1.view)
            controller1.didMove(toParent: self)
            controller1.view.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                controller1.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                controller1.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ])
            print("セグメント１")
            break
        case 2:
            
            let controller2 = UIHostingController(rootView: SegmentedSwiftUIView2())
            addChild(controller2)
            view.addSubview(controller2.view)
            controller2.didMove(toParent: self)
            controller2.view.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                controller2.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                controller2.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ])
            
            print("セグメント２")
            break
        case 3:
            
            let controller3 = UIHostingController(rootView: SegmentedSwiftUIView3())
            addChild(controller3)
            view.addSubview(controller3.view)
            controller3.didMove(toParent: self)
            controller3.view.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                controller3.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                controller3.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ])
            print("セグメント３")
            break
        default:
            break
        }
        
    }
    @IBAction func presentSwiftUIView() {
        let controller = UIHostingController(rootView: SwiftUIViewSample())
        controller.modalPresentationStyle = .overFullScreen
        present(controller, animated: true)
    }
    
}





