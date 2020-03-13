//
//  Opportunity.swift
//  Trivagas
//
//  Created by Rafael Santiago on 13/03/2020.
//  Copyright © 2020 Trilogo. All rights reserved.
//

import Foundation

struct Opportunity : Identifiable {
    var id: Int = -1
    var title: String = ""
    var companyName: String = ""
    var location: String = ""
    var datePosted: Int = -1
    var type: String = ""
}

#if DEBUG
let testOpportunityData = [
    Opportunity(id: 1, title: "Desenvolvedor Front-End / Mobile / Backend ", companyName: "Trílogo Trílogo Trílogo Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 30, type: "Full-time"),
    Opportunity(id: 2, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 3, type: "Part-time"),
    Opportunity(id: 3, title: "Desenvolvedor PHP", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 3,
                type: "Full-time"),
    Opportunity(id: 4, title: "Desenvolvedor Front-End", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 3, type: "Part-time"),
    Opportunity(id: 5, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 3, type: "Part-time"),
    Opportunity(id: 6, title: "Desenvolvedor PHP", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 3, type: "Part-time"),
    Opportunity(id: 7, title: "Desenvolvedor Front-End", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 3, type: "Part-time"),
    Opportunity(id: 8, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 3, type: "Part-time"),
    Opportunity(id: 9, title: "Desenvolvedor PHP", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 3, type: "Part-time"),
    Opportunity(id: 10,title: "Desenvolvedor Front-End", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 1, type: "Part-time"),
    Opportunity(id: 11, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 1, type: "Part-time"),
    Opportunity(id: 12, title: "Desenvolvedor PHP", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 1, type: "Part-time"),
    Opportunity(id: 13, title: "Desenvolvedor Front-End", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 1, type: "Part-time"),
    Opportunity(id: 14, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 1, type: "Part-time"),
    Opportunity(id: 15, title: "Desenvolvedor PHP", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 3, type: "Part-time"),
    Opportunity(id: 16, title: "Desenvolvedor Front-End", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 5, type: "Part-time"),
    Opportunity(id: 17, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 5, type: "Part-time"),
    Opportunity(id: 18, title: "Desenvolvedor PHP", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 5, type: "Part-time"),
    Opportunity(id: 19, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 5, type: "Part-time"),
    Opportunity(id: 20,title: "Desenvolvedor Front-End", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 6, type: "Part-time"),
    Opportunity(id: 21, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 6, type: "Part-time"),
    Opportunity(id: 22, title: "Desenvolvedor PHP", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 7, type: "Part-time"),
    Opportunity(id: 23, title: "Desenvolvedor Front-End", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 7, type: "Part-time"),
    Opportunity(id: 24, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 7, type: "Part-time"),
    Opportunity(id: 25, title: "Desenvolvedor PHP", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 7, type: "Part-time"),
    Opportunity(id: 26, title: "Desenvolvedor Front-End", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 8, type: "Part-time"),
    Opportunity(id: 27, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 10, type: "Part-time"),
    Opportunity(id: 28, title: "Desenvolvedor PHP", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 15, type: "Part-time"),
    Opportunity(id: 29, title: "Desenvolvedor Mobile", companyName: "Trílogo", location: "Fortaleza, Ceará, Brasil", datePosted: 20, type: "Part-time")
    ]
#endif
