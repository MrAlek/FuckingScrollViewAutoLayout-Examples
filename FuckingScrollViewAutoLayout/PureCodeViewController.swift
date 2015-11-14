//
//  PureCodeViewController.swift
//  FuckingScrollViewAutoLayout
//
//  Created by Alek Åström on 2015-09-29.
//  Copyright © 2015 Apps and Wonders. All rights reserved.
//

import UIKit

class PureCodeViewController : UIViewController {
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor.whiteColor()
        scrollView.preservesSuperviewLayoutMargins = true
        return scrollView
    }()
    
    lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.preservesSuperviewLayoutMargins = true
        return contentView
        }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur augue nisi, ut placerat eros volutpat blandit. Morbi id tortor ac quam pretium egestas id eu nulla. Aliquam iaculis tellus eu luctus sollicitudin. Fusce vehicula elementum odio, vel aliquet justo suscipit sit amet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc egestas massa ut aliquet mattis. Curabitur in vehicula nisl, posuere lobortis quam. Nulla posuere nisl sit amet arcu elementum eleifend. Sed lorem quam, volutpat nec urna in, pellentesque blandit quam. Vivamus in ornare dolor, ac vestibulum tellus.\n\nProin libero enim, fermentum et nisi nec, sagittis imperdiet leo. Vivamus at maximus nisl. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam leo orci, blandit vitae suscipit eget, lacinia vitae libero. Praesent turpis diam, condimentum scelerisque vestibulum at, vehicula sit amet ipsum. Fusce bibendum scelerisque ligula, sed congue ante ultrices ac. Donec massa arcu, feugiat eget mauris nec, fermentum rutrum lorem. Duis hendrerit convallis risus, et mattis eros porta finibus.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur augue nisi, ut placerat eros volutpat blandit. Morbi id tortor ac quam pretium egestas id eu nulla. Aliquam iaculis tellus eu luctus sollicitudin. Fusce vehicula elementum odio, vel aliquet justo suscipit sit amet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc egestas massa ut aliquet mattis. Curabitur in vehicula nisl, posuere lobortis quam. Nulla posuere nisl sit amet arcu elementum eleifend. Sed lorem quam, volutpat nec urna in, pellentesque blandit quam. Vivamus in ornare dolor, ac vestibulum tellus.\n\nProin libero enim, fermentum et nisi nec, sagittis imperdiet leo. Vivamus at maximus nisl. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam leo orci, blandit vitae suscipit eget, lacinia vitae libero. Praesent turpis diam, condimentum scelerisque vestibulum at, vehicula sit amet ipsum. Fusce bibendum scelerisque ligula, sed congue ante ultrices ac. Donec massa arcu, feugiat eget mauris nec, fermentum rutrum lorem. Duis hendrerit convallis risus, et mattis eros porta finibus."
        return label
        }()
    
    lazy var button: UIButton = {
        let button = UIButton(type: .System)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", forState: .Normal)
        return button
        }()
    
    override func loadView() {
        view = scrollView
        scrollView.addSubview(contentView)
        
        let views = ["contentView": contentView, "label": label, "button": button]
        scrollView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|-0-[contentView]-0-|",
            options: [],
            metrics: nil,
            views: views))
        scrollView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-0-[contentView]-0-|",
            options: [],
            metrics: nil,
            views: views))
        scrollView.addConstraint(scrollView.widthAnchor.constraintEqualToAnchor(contentView.widthAnchor))

        contentView.addSubview(label)
        contentView.addSubview(button)
        
        contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|-[label]-|",
            options: [],
            metrics: nil,
            views: views))
        contentView.addConstraint(contentView.centerXAnchor.constraintEqualToAnchor(button.centerXAnchor))
        contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-[label]-8-[button]-|",
            options: [],
            metrics: nil,
            views: views))
    }
}
