//
//  AppDelegate.swift
//  storyboard-less-macOS
//
//  Created by Pedro Fernandes on 2024-01-19.
//

import Cocoa

//@main
class AppDelegate: NSObject, NSApplicationDelegate {

    private var window: NSWindow!

    var myViewController : ViewController!

    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        print ("applicationDidFinishLaunching")
        
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 270),
            styleMask: [.miniaturizable, .closable, .resizable, .titled],
            backing: .buffered, defer: false)
        window.center()
        window.title = "No Storyboard Window"
    
        myViewController = ViewController()
        
        window.contentViewController = myViewController
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

