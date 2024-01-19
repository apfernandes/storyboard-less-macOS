# storyboard-less-macOS

How to create a macOS Xcode project withouth using storyboards

This is based on a writing by Sarunw found here, https://sarunw.com/posts/how-to-create-macos-app-without-storyboard/

Sarun explains how to add SwiftUI content to the Window but I wanted to add a ViewController and coming from iOS I struggled
a bit so I leave you with the steps.

Creating a project without a storyboard has many drawbacks, but, if you like to take charge of every litte detail, welcome.

Do not follow these steps on an existing Xcode project. Use them only when creating a blank project from scratch.

This guide was created for Xcode Version 15.1

- Create a new macOS APP Project

<img alt="01_Xcode_new_project" src="Image-Assets/01_Xcode_new_project.png" width="800">

<img alt="02_Xcode_new_project_II.png" src="Image-Assets/02_Xcode_new_project_II.png" width="800">

- Delete Main.storyboard file

<img alt="03_Remove_Storyboard.png" src="Image-Assets/03_Remove_Storyboard.png" width="800">

- Delete Storyboard name from Target -> Info

<img alt="04_Remove_storyboard_reference.png" src="Image-Assets/04_Remove_storyboard_reference.png" width="800">

- Create a new `main.swift`  to tie together NSApplication with your AppDelegate

<img alt="05_Create_new_Swift_file.png" src="Image-Assets/05_Create_new_Swift_file.png" width="800">

- This file name is case sensitive

<img alt="06_Create_new_Swift_file.png" src="Image-Assets/06_Create_new_Swift_file.png" width="800">
<img alt="07_Create_new_Swift_file.png" src="Image-Assets/07_Create_new_Swift_file.png" width="800">

- Modify your `AppDelegate` to create a Window and assign it your `ViewController`

    **Make sure that you comment/delete the `@main` that was used by the storyboard setup**

<img alt="08_Modify_AppDelegate.png" src="Image-Assets/08_Modify_AppDelegate.png" width="800">

- Add a function `loadView()` to your `ViewController` to create a `view`. 

    This is critical as unlike iOS this view is not created for you and `viewDidLoad` is not called if you don't have loadView()

<img alt="09_Change_ViewController.png" src="Image-Assets/09_Change_ViewController.png" width="800">

We can now run our APP and view the Yellow color of success:

<img alt="10_Success.png" src="Image-Assets/10_Success.png" width="400">

Free as a bird!
