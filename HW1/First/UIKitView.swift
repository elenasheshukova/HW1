//
//  UIKitView.swift
//  HW1
//
//  Created by Елена Червоткина on 10.12.2021.
//

import SwiftUI


struct UIKitView: UIViewRepresentable {
    let text: String
    private let label: UILabel = UILabel()
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = .red
        view.clipsToBounds = true
        
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 20)
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(label)
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        label.text = text
        label.sizeToFit()
    }
}
