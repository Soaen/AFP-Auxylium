//
//  SettingDetails.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI
struct SettingDetails: View {
    
    var settingDisplay : Setting
    
    var body: some View {
        
        VStack {
    Image(systemName: settingDisplay.systemImage)
                    Text(settingDisplay.title)
            
        }
    }
}

struct SettingDetails_Previews: PreviewProvider {
    static var previews: some View {SettingDetails (settingDisplay: settings[0])
    }
}
