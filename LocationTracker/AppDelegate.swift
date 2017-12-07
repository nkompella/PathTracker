//
//  AppDelegate.swift
//  LocationTracker
//
//  Created by Neha Kompella on 12/6/17.
//  Copyright © 2017 Neha Kompella. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func applicationWillTerminate(_ application: UIApplication) {
    CoreDataStack.saveContext()
  }
  
  func applicationDidEnterBackground(_ application: UIApplication) {
    CoreDataStack.saveContext()
  }
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    UINavigationBar.appearance().tintColor = .white
    UINavigationBar.appearance().barTintColor = .black
    let locationBoss = LocationBoss.shared
    locationBoss.requestWhenInUseAuthorization()
    return true
  }
  
}

