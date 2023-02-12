//
//  CourseButtons.swift
//  TestForSurf
//
//  Created by Andrei Kovryzhenko on 12.02.2023.
//

import Foundation
import UIKit

struct CourseButtons {
    
    var title: String
    var width: Int
    
    static func choiceCourse() -> [CourseButtons] {
        
        let iosCourse = CourseButtons(title: "IOS", width: 71)
        let androudCourse = CourseButtons(title: "Android", width: 96)
        let designCourse = CourseButtons(title: "Design", width: 91)
        let qaCourse = CourseButtons(title: "QA", width: 68)
        let flutterCourse = CourseButtons(title: "Flutter", width: 87)
        let pmCourse = CourseButtons(title: "PM", width: 69)
    
        return [iosCourse, androudCourse, designCourse ,qaCourse, flutterCourse, pmCourse]
    }
}
