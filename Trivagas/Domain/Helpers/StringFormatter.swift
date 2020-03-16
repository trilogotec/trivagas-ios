//
//  StringFormatter.swift
//  Trivagas
//
//  Created by Rafael Santiago on 15/03/2020.
//  Copyright © 2020 Trilogo. All rights reserved.
//

struct StringFormatter {
    static func formatPostedDays(_ postedDays: Int) -> String {
           var dayOrDays = "dia"
           if(postedDays > 1) {
               dayOrDays += "s"
           }
           
           let formattedString = "\(postedDays) \(dayOrDays) atrás"
           return formattedString
       }
}
