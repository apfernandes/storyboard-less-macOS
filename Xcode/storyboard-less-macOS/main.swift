//
//  main.swift
//  storyboard-less-macOS
//
//  Created by Pedro Fernandes on 2024-01-19.
//

import Foundation
import Cocoa

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate

_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
