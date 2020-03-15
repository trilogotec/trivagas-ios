//
//  OpportunityViewModel.swift
//  Trivagas
//
//  Created by Rafael Santiago on 13/03/2020.
//  Copyright © 2020 Trilogo. All rights reserved.
//

import Foundation


class OpportunityViewModel : ObservableObject {
    @Published var listOfOpportunities = [Opportunity]()
    
    func getAllOpportunities() {
        DispatchQueue.global().async {
            var newListOfOpportunities = testOpportunityData
            newListOfOpportunities.sort { return $0.datePosted < $1.datePosted }
            
            sleep(3) //Simulating a Network Call
            
            DispatchQueue.main.async {
                self.listOfOpportunities = newListOfOpportunities
            }
        }
    }
}
