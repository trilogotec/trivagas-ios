//
//  OpportunityCell.swift
//  Trivagas
//
//  Created by Rafael Santiago on 13/03/2020.
//  Copyright © 2020 Trilogo. All rights reserved.
//

import SwiftUI

struct OpportunityCell : View {
    let opportunity: Opportunity
    let viewModel: OpportunityViewModel
    
    var body : some View {
        HStack {
            CompanyAvatar()
            VStack(alignment: .center, spacing: 10) {
                CardHeader(opportunity: opportunity)
                CardDivider()
                CellFooter(opportunity: opportunity, viewModel: viewModel)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color("Purple"), lineWidth: 1)
        )
    }
}

#if DEBUG
struct OpportunityCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OpportunityCell(opportunity: testOpportunityData[0], viewModel: OpportunityViewModel())
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Light")
                .colorScheme(.light)
                .padding()
            
            OpportunityCell(opportunity: testOpportunityData[0], viewModel: OpportunityViewModel())
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Dark")
                .colorScheme(.dark)
                .padding()
                .background(Color.black)
        }
    }
}
#endif

struct CompanyAvatar: View {
    var body: some View {
        Image("PlaceHolderAvatar")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 70, height: 70)
            .background(Color.white)
            .clipShape(Circle())
            .shadow(radius: 0)
            .overlay(Circle().stroke(Color("BodyText"), lineWidth: 1.5))
            .padding(.trailing, 10)
    }
}

struct CardHeader: View {
    let opportunity: Opportunity
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(opportunity.title)
                .font(.headline)
                .foregroundColor(Color("OppotunityTitleLabel"))
                .lineLimit(3)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: .none, maxHeight: .none, alignment: .leading)
            
            HStack {
                Text(opportunity.companyName)
                    .font(.subheadline)
                    .foregroundColor(Color("BodyText"))
            }.padding(EdgeInsets(top: 3, leading: 0, bottom: 0, trailing: 0))
            
            HStack {
                Image(systemName: "mappin")
                    .font(.footnote)
                    .foregroundColor(Color("BodyText"))
                
                Text(opportunity.location)
                    .font(.footnote)
                    .foregroundColor(Color("BodyText"))
            }.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct CardDivider: View {
    var body: some View {
        Divider()
            .frame(height: 0.5)
            .background(Color("DividerColor"))
    }
}

struct CellFooter: View {
    let opportunity: Opportunity
    let viewModel: OpportunityViewModel
    
    var body: some View {
        HStack {
            Image(systemName: "briefcase.fill")
                .font(.subheadline)
                .foregroundColor(Color("OpportunityRowIcons"))
            Text(opportunity.type)
                .font(.subheadline)
                .foregroundColor(Color("BodyText"))
            Spacer()
            Image(systemName: "clock.fill")
                .font(.subheadline)
                .foregroundColor(Color("OpportunityRowIcons"))
            Text(viewModel.formatPostedDays(opportunity.datePosted))
                .font(.subheadline)
                .foregroundColor(Color("BodyText"))
        }
    }
}
