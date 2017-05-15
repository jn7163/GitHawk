//
//  EmptyView.swift
//  Freetime
//
//  Created by Ryan Nystrom on 5/15/17.
//  Copyright © 2017 Ryan Nystrom. All rights reserved.
//

import UIKit
import SnapKit

final class EmptyView: UIView {

    let label = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        label.backgroundColor = Styles.Colors.Gray.lighter
        label.font = Styles.Fonts.body
        label.textColor = Styles.Colors.Gray.medium
        label.numberOfLines = 0
        addSubview(label)
        label.snp.makeConstraints { make in
            make.center.equalTo(self)
            make.width.lessThanOrEqualTo(self).offset(Styles.Sizes.gutter)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}