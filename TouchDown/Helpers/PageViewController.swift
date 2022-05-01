//
//  PageViewController.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import UIKit
import SwiftUI

struct PageViewController: UIViewControllerRepresentable {
    
    var controllers: [UIViewController]
    @Binding var currentPage: Int
    @State private var previousPage = 0
    
    init(controllers: [UIViewController],
         currentPage: Binding<Int>)
    {
        self.controllers = controllers
        self._currentPage = currentPage
        self.previousPage = currentPage.wrappedValue
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        guard !controllers.isEmpty else {return}
        
        let direction: UIPageViewController.NavigationDirection = previousPage < currentPage ? .forward : .reverse
        context.coordinator.parent = self
        pageViewController.setViewControllers([controllers[currentPage]], direction: direction, animated: true) { _ in
            previousPage = currentPage
        }
    }
}

class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    var parent: PageViewController
    
    init(_ pageViewController: PageViewController) {
        self.parent = pageViewController
    }
    
    func pageViewController(
        _ pageViewController: UIPageViewController,
        viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = parent.controllers.firstIndex(of: viewController) else {
                return nil
            }
            if index == 0 {
                return parent.controllers.last
            }
            return parent.controllers[index - 1]
        }
    
    func pageViewController(
        _ pageViewController: UIPageViewController,
        viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = parent.controllers.firstIndex(of: viewController) else {
                return nil
            }
            if index + 1 == parent.controllers.count {
                return parent.controllers.first
            }
            return parent.controllers[index + 1]
        }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if completed,
           let visibleViewController = pageViewController.viewControllers?.first,
           let index = parent.controllers.firstIndex(of: visibleViewController) {
            parent.currentPage = index
        }
    }
}

