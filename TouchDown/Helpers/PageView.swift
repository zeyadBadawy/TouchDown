//
//  PageView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct PageView<Page: View>: View {
    //MARK: PROPERTIES
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    
    //MARK: INIT
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    //MARK: BODY
    var body: some View {
        ZStack(alignment: .bottom) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
        }
    }
}
