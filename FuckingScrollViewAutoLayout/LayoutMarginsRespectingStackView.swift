//
//  LayoutMarginsRespectingStackView.swift
//  FuckingScrollViewAutoLayout
//
//  Created by Alek Åström on 2015-09-24.
//  Copyright © 2015 Apps and Wonders. All rights reserved.
//

import UIKit

/// Used until rdar://21630496 is fixed
@IBDesignable public class LayoutMarginsRespectingStackView : UIStackView {
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        layoutMarginsRelativeArrangement = true
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        layoutMarginsRelativeArrangement = true   
    }
}
