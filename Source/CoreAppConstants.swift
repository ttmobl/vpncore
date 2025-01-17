//
//  AppConstants.swift
//  vpncore - Created on 26.06.19.
//
//  Copyright (c) 2019 Proton Technologies AG
//
//  This file is part of vpncore.
//
//  vpncore is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  vpncore is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with vpncore.  If not, see <https://www.gnu.org/licenses/>.

import Foundation

public class CoreAppConstants {
    
    public static let appKeychain = "ProtonVPN"
    
    public struct VpnTiers {
        public static let free = 0
        public static let basic = 1
        public static let visionary = 2
        public static let max = 3
        
        public static let allCases = [free, basic, visionary, max]
    }
    
    public struct ProtonMailLinks {
        public static let about = "https://protonmail.com/about"
    }
    
    public struct ProtonVpnLinks {
        public static let signUp = "https://account.protonvpn.com/signup"
        public static let accountDashboard = "https://account.protonvpn.com/dashboard"
        public static let upgrade = "https://account.protonvpn.com/login"
        public static let learnMore = "https://protonvpn.com/support/secure-core-vpn"
        public static let killSwitchSupport = "https://protonvpn.com/support/what-is-kill-switch"
        public static let netshieldSupport = "https://protonvpn.com/support/netshield"
        public static let support = "https://protonvpn.com/support"
        public static let supportForm = "https://protonvpn.com/support-form"
        public static let supportCommonIssues = "https://protonvpn.com/support/common-macos-issues-protonvpn"
        public static let resetPassword = "https://account.protonvpn.com/reset-password"
        public static let forgotUsername = "https://account.protonvpn.com/forgot-username"
        public static let termsAndConditions = "https://protonvpn.com/terms-and-conditions"
        public static let privacyPolicy = "https://protonvpn.com/privacy-policy"
        public static let appstoreIosUrl = "http://itunes.apple.com/app/id1437005085"
        public static let unsecureWiFiUrl = "https://protonvpn.com/blog/public-wifi-safety/"
        public static let batteryOpenVpn = "https://protonvpn.com/support/openvpn-battery-usage/"
    }
    
    public struct AttributionLinks {
        public static let fontAwesome = "https://fontawesome.com/"
        public static let fontAwesomeLicense = "https://creativecommons.org/licenses/by/4.0/"
    }
    
    public static func serverTierName(forTier tier: Int) -> String {
        switch tier {
        case 0:
            return LocalizedString.freeServers
        case 1:
            return LocalizedString.basicServers
        case 2:
            return LocalizedString.plusServers
        default:
            return LocalizedString.testServers
        }
    }
    
    public struct UpdateTime {
        public static let quickUpdateTime: TimeInterval = 3.0
        public static let quickReconnectTime: TimeInterval = 0.5
        
        // Pull announcements from API
        public static let announcementRefreshTime: TimeInterval = 12 * 60 * 60 // 12 h
    }
    
    public struct Maintenance {
        public static let defaultMaintenanceCheckTime: Int = 10 // Minutes
    }
}
