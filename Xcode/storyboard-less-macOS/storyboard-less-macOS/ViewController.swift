//
//  ViewController.swift
//  storyboard-less-macOS
//
//  Created by Pedro Fernandes on 2024-01-19.
//

import Cocoa

class ViewController: NSViewController {

    override func loadView() {
        // Create the view for this view controller
        self.view = NSView(frame: NSRect(x: 0, y: 0, width: 640, height: 480))
        
        self.view.wantsLayer = true
        self.view.layer?.backgroundColor = NSColor.yellow.cgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

