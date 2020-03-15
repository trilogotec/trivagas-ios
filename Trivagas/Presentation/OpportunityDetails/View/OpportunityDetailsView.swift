//
//  OpportunityDetailsView.swift
//  Trivagas
//
//  Created by Rafael Santiago on 13/03/2020.
//  Copyright © 2020 Trilogo. All rights reserved.
//

import SwiftUI
import WebKit

struct OpportunityDetailsView: View {
    let opportunity : Opportunity
    let viewModel = OpportunityViewModel()
    
    init(opportunity: Opportunity?) {
        if let safeOpportunity = opportunity {
            self.opportunity = safeOpportunity
        } else {
            self.opportunity = Opportunity()
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                CompanyAvatar()
                CardHeader(opportunity: opportunity)
            }
            CardDivider()
            WebView(htmlString: opportunity.description)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            CardDivider()
            CellFooter(opportunity: opportunity)
                  
        }
        .padding(EdgeInsets(top: 50, leading: 30, bottom: 10, trailing: 30))
        .navigationBarTitle(Text(opportunity.companyName), displayMode: .inline)
    }
}

struct WebView: UIViewRepresentable {
    let htmlString: String
    private let css = """
        body {
            background-color: white;
            color: black;
        }

        a:link {
            color: #0078b5;
            text-decoration: none;
        }

        @media (prefers-color-scheme: dark) {
            body {
                background-color: #1c1c1e;
                color: white;
            }
            a:link {
                color: #0096e2;
            }
            a:visited {
                color: #9d57df;
            }
        }
        """
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        
        let html = " " +
            "<html>" +
            "<head>" +
                "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" +
                "<style>" +
                    css +
                "</style>" +
            "</head>" +
            "<body>" +
                htmlString +
            "</body>" +
            "</html>"
            
        webView.loadHTMLString(html, baseURL: nil)
    }
}

#if DEBUG
struct OpportunityDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                OpportunityDetailsView(opportunity: testOpportunityData[1])
                    .previewDisplayName("Light")
            }
            
            NavigationView {
                OpportunityDetailsView(opportunity: testOpportunityData[1])
                                       
            }
                .previewDisplayName("Dark")
                .colorScheme(.dark)
            
        }
    }
}
#endif
