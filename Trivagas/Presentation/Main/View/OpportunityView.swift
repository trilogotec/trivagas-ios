//
//  ContentView.swift
//  Trivagas
//
//  Created by Trilogo Dev1 on 09/11/19.
//  Copyright © 2019 Trilogo. All rights reserved.
//

import SwiftUI

struct OpportunityView: View {
    @ObservedObject var viewModel = OpportunityViewModel()
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            NavigationView {
                List() {
                    ForEach (viewModel.listOfOpportunities) { opportunity in
                        OpportunityCell(opportunity: opportunity, viewModel: self.viewModel)
                    }
                    .listStyle(PlainListStyle())
                }.onAppear {
                    UITableView.appearance().separatorStyle = .none
                    self.populateOpportunityList()
                }
                .navigationBarTitle(Text("Vagas"), displayMode: .automatic)
            }
        }
    }
    
    func populateOpportunityList() {
        #if DEBUG
        self.viewModel.listOfOpportunities = testOpportunityData.sorted(by: { $0.datePosted < $1.datePosted })
        #else
        self.viewModel.getAllOpportunities()
        #endif
    }
}

struct OpportunityView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OpportunityView(viewModel: OpportunityViewModel())
                .previewDisplayName("Light")
            
            OpportunityView(viewModel: OpportunityViewModel())
                .colorScheme(.dark)
                .previewDisplayName("Dark")
        }
    }
}
