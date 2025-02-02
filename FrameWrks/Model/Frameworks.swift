//
//  Frameworks.swift
//  FrameWrks
//
//  Created by Priyansh on 31/01/25.
//

import Foundation

struct Framework: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}

struct MockData {
    static let sampeFramework = Framework(name: "App Clips",
                                          imageName: "app-clip",
                                          urlString: "https://developer.apple.com/app-clips/",
                                          description: "App Clips allow users to quickly access small parts of an app without installing the full application. They are triggered by NFC tags, QR codes, or web links, and are optimized for fast launch. Ideal for transient tasks like ordering, registration, or device setup. The framework enables seamless transition to the full app, with app download prompts through the App Store.")
    static let frameworks = [
        Framework(name: "App Clips",
                  imageName: "app-clip",
                  urlString: "https://developer.apple.com/app-clips/",
                  description: "App Clips allow users to quickly access small parts of an app without installing the full application. They are triggered by NFC tags, QR codes, or web links, and are optimized for fast launch. Ideal for transient tasks like ordering, registration, or device setup. The framework enables seamless transition to the full app, with app download prompts through the App Store."),
        
        Framework(name: "ARKit",
                  imageName: "arkit",
                  urlString: "https://developer.apple.com/augmented-reality/arkit",
                  description: "ARKit leverages advanced computer vision, scene understanding, and LiDAR depth data (on supported devices) to create immersive AR experiences. It supports 3D object detection, scene reconstruction, and real-world location-based AR via the Location Anchors API. Face tracking and collaborative AR sessions are also supported, making it ideal for gaming, education, and retail apps."),
        
        Framework(name: "CarPlay",
                  imageName: "carplay",
                  urlString: "https://developer.apple.com/carplay",
                  description: "CarPlay integrates apps with a car’s infotainment system, enabling hands-free interactions via Siri. It mirrors key iPhone functionalities on the car’s display for tasks like navigation, media playback, messaging, and calling. CarPlay prioritizes safety by providing easy-to-use interfaces tailored for driving."),
        
        Framework(name: "Catalyst",
                  imageName: "catalyst",
                  urlString: "https://developer.apple.com/mac-catalyst",
                  description: "Catalyst allows iPad apps to run natively on macOS with minimal changes to the codebase. It shares code between iOS and macOS, enabling developers to take advantage of macOS-specific features like multiple windows, touch bar support, and AppKit integration. Catalyst brings iPad apps to the Mac App Store with optimized user experiences."),
        
        Framework(name: "ClassKit",
                  imageName: "classkit",
                  urlString: "https://developer.apple.com/classkit",
                  description: "ClassKit integrates educational apps with Apple’s Schoolwork app. It allows teachers to assign content, track progress, and manage student activities. ClassKit ensures secure sharing of data with authorized educators while supporting interactive assignments, lessons, and assessments in third-party educational apps."),
        
        Framework(name: "CloudKit",
                  imageName: "cloudkit",
                  urlString: "https://developer.apple.com/icloud/cloudkit",
                  description: "CloudKit is a robust cloud storage solution for syncing data across iOS, macOS, and the web via iCloud. It offers structured and file data storage, as well as public and private databases, enabling apps to store user data securely and scale effortlessly. CloudKit supports real-time push notifications for app updates."),
        
        Framework(name: "Core ML",
                  imageName: "coreml",
                  urlString: "https://developer.apple.com/machine-learning",
                  description: "Core ML enables the integration of machine learning models directly into iOS, macOS, watchOS, and tvOS apps. It supports tasks like image recognition, natural language processing, and sound analysis. Core ML enables real-time on-device inference with minimal performance and battery impact, and works with models trained in popular machine learning frameworks."),
        
        Framework(name: "HealthKit",
                  imageName: "healthkit",
                  urlString: "https://developer.apple.com/health-fitness",
                  description: "HealthKit provides a unified platform for accessing and storing health and fitness data across iOS and watchOS. Apps can read and write data such as activity, nutrition, sleep, and vitals, while ensuring user privacy. HealthKit enables personalized recommendations and allows data sharing between apps for comprehensive health tracking."),
        
        Framework(name: "Metal",
                  imageName: "metal",
                  urlString: "https://developer.apple.com/metal",
                  description: "Metal is a low-level, high-performance graphics API that provides near-direct access to the GPU. It enables developers to create graphics-intensive apps for iOS, macOS, and tvOS, with features like tessellation, compute shaders, and performance shaders. Metal is ideal for gaming, image processing, and machine learning applications that require maximum GPU efficiency."),
        
        Framework(name: "SF Symbols",
                  imageName: "sf-symbols",
                  urlString: "https://developer.apple.com/sf-symbols",
                  description: "SF Symbols provides over 2,400 vector-based symbols designed for use with Apple’s San Francisco font. These symbols are fully customizable in size, weight, and color, and integrate with Dynamic Type for automatic scaling. Developers can create custom symbols or modify existing ones to maintain visual consistency across Apple platforms."),
        
        Framework(name: "SiriKit",
                  imageName: "sirikit",
                  urlString: "https://developer.apple.com/siri",
                  description: "SiriKit allows apps to integrate with Siri and Shortcuts for voice-based interactions. It supports domains like messaging, payments, ride booking, and media playback. SiriKit also enables users to create custom voice commands, enhancing app engagement and accessibility across iPhone, iPad, Apple Watch, HomePod, and Apple TV."),
        
        Framework(name: "SpriteKit",
                  imageName: "spritekit",
                  urlString: "https://developer.apple.com/spritekit",
                  description: "SpriteKit is a 2D game development framework optimized for creating physics-based games. It supports particle systems, scene graphs, collision detection, and custom shaders. With integration to SceneKit, developers can mix 2D and 3D content, offering high-performance gaming experiences while minimizing energy consumption."),
        
        Framework(name: "SwiftUI",
                  imageName: "swiftui",
                  urlString: "https://developer.apple.com/xcode/swiftui",
                  description: "SwiftUI is a declarative framework for building user interfaces across all Apple platforms. It enables real-time UI updates in response to data changes and supports features like Dynamic Type, Dark Mode, and accessibility. SwiftUI integrates seamlessly with Xcode, enabling developers to design, preview, and code UIs using a single shared codebase."),
        
        Framework(name: "TestFlight",
                  imageName: "test-flight",
                  urlString: "https://developer.apple.com/testflight",
                  description: "TestFlight is Apple’s beta testing platform, enabling developers to distribute apps and App Clips to testers for feedback before launch. It supports up to 10,000 testers, feedback collection, session recording, crash reporting, and analytics to help identify issues and improve the user experience prior to public release."),
        
        Framework(name: "WidgetKit",
                  imageName: "widgetkit",
                  urlString: "https://developer.apple.com/widgets",
                  description: "WidgetKit enables developers to create interactive home screen widgets for iOS, iPadOS, and macOS. Widgets display dynamic content and can update automatically or through user interaction. It supports multiple sizes, Smart Stacks for intelligent content display, and integration with SwiftUI for seamless design and development."),
        
    ]
}
