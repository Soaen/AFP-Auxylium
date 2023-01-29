//
//  AuxyliumApp.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI

@main
struct AuxyliumApp: App {
    var body: some Scene {
        WindowGroup {
            HomePage().environmentObject(ChoixLangue())
        }
    }
}
