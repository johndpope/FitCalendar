//
//  AddExerciseCell.swift
//  FitCalendar
//
//  Created by Магомедов Рамазан on 28.11.2019.
//  Copyright © 2019 Магомедов Рамазан. All rights reserved.
//

import UIKit

final class AddExerciseCell: UITableViewCell {
    
    // MARK: - Views
    
    private var titleLabel: UILabel!
    private var arrowImageView: UIImageView!
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
        setupArrowImageView()
        setupTitleLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup views funcs
    
    private func setupCell() {
        self.selectionStyle = .none
    }
    
    private func setupArrowImageView() {
        arrowImageView = UIImageView(frame: .zero)
        self.addSubview(arrowImageView)
        
        arrowImageView.image = #imageLiteral(resourceName: "nextArrow")
        arrowImageView.tintColor = .white
        arrowImageView.backgroundColor = .clear
        
        arrowImageView.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
            make.height.equalTo(18)
            make.width.equalTo(12)
        }
    }
    
    private func setupTitleLabel() {
        titleLabel = UILabel(frame: .zero)
        self.addSubview(titleLabel)
        
        titleLabel.textColor = .white
        titleLabel.backgroundColor = .clear
        titleLabel.numberOfLines = 0
        titleLabel.font = titleLabel.font.withSize(16)
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(16)
            make.height.equalTo(20)
            make.bottom.equalToSuperview().offset(-16)
            make.left.equalToSuperview().offset(16)
            make.right.equalTo(arrowImageView).offset(8)
        }
    }
    
}

// MARK: - Configurable

extension AddExerciseCell: Configurable {
    typealias Model = String
    
    func configure(with model: String) {
        self.titleLabel.text = model
    }
}
