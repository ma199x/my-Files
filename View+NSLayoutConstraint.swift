//
//  View+ProfessionalConstraints.swift
//  withoutMain
//
//  Created by Mohammed Ali on 12/12/2023.
//

import UIKit

extension UIView {
    
    // top
    
    @discardableResult
    func applyTopConstraint(to anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0) -> UIView {
        topAnchor.constraint(equalTo: anchor, constant: offset).isActive = true
        return self
    }
    
    //leading
    
    @discardableResult
    func applyLeadingConstraint(to anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0) -> UIView {
        leadingAnchor.constraint(equalTo: anchor, constant: offset).isActive = true
        return self
    }
    
    //trailing
    
    @discardableResult
    func applyTrailingConstraint(to anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0) -> UIView {
        trailingAnchor.constraint(equalTo: anchor, constant: -offset).isActive = true
        return self
    }
    
    //bottom
    
    @discardableResult
    func applyBottomConstraint(to anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0) -> UIView {
        bottomAnchor.constraint(equalTo: anchor, constant: -offset).isActive = true
        return self
    }
    // center y
    
    func applyCenterYConstraint(to anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0) {
        centerYAnchor.constraint(equalTo: anchor, constant: offset).isActive = true
    }
    
    // center x
    
    func applyCenterXConstraint(to anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0) {
        centerXAnchor.constraint(equalTo: anchor, constant: offset).isActive = true
    }
    
    //Center In Superview
    
    @discardableResult
    func applyCenterInSuperviewWithConstraints() -> UIView {
        guard let superview = superview else {
            fatalError("Cannot center in superview. View has no superview.")
        }
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
        return self
    }

    //Width Constraint
    
    @discardableResult
    func applyWidthConstraint(_ constant: CGFloat) -> UIView {
        widthAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }

    //Height Constraint
    
    @discardableResult
    func applyHeightConstraint(_ constant: CGFloat) -> UIView {
        heightAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }
    
    //Edge Constraints
    
    func applyEdgeConstraints(to superview: UIView, withInsets insets: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: insets.top),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: insets.left),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -insets.right),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -insets.bottom)
        ])
    }
}
