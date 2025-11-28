//
//  AppDelegate.swift
//  RecetasSaludables
//
//  Created by Carlos Alfredo Call on 25/11/25.
//


import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {

        // Crear la ventana manualmente
        window = UIWindow(frame: UIScreen.main.bounds)

        // Cargar el storyboard "Main"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        // Usar el Initial View Controller del storyboard (tu Navigation Controller)
        let initialVC = storyboard.instantiateInitialViewController()!

        // Asignarlo como raíz de la ventana
        window?.rootViewController = initialVC
        window?.makeKeyAndVisible()

        return true
    }
}
