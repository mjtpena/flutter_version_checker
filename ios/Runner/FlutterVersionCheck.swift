//
//  FlutterVersionCheck.swift
//  Runner
//
//  Created by Michael John Pena on 11/12/18.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

import Foundation

class RNVersionCheck {
    func countryCode() -> String? {
        let countryCode = Locale.current.regionCode;
        return countryCode
    }
    
    func packageName() -> String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleIdentifier") as? String
    }
    
    func currentVersion() -> String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
    
    func currentBuildNumber() -> String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String
    }
    
    func constantsToExport() -> [AnyHashable : Any]? {
        return ["countryCode": (countryCode()) ?? 0, "packageName": packageName() ?? 0, "currentVersion": currentVersion() ?? 0, "currentBuildNumber": currentBuildNumber() ?? 0]
    }
}
