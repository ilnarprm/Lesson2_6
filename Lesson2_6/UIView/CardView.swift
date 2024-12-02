//
//  CardView.swift
//  Lesson2_6
//
//  Created by Ilnar on 30.11.2024.
//

import UIKit

class CardView: UITableViewCell {
    static let identityfier: String = "CardView"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(cardView)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var cardView: UIView = {
        $0.backgroundColor = .systemGray5
        $0.layer.cornerRadius = 30
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubviews(cardName, cardImage, cardTitle, cardDate, cardText, cardButton)
        return $0
    }(UIView())
    
    private lazy var cardName: UILabel = {
        $0.font = .systemFont(ofSize: 20, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    private lazy var cardImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 30
        return $0
    }(UIImageView())
    
    private lazy var cardTitle: UILabel = setLabel(ofSize: 20, weight: .bold)
    
    private lazy var cardDate: UILabel = setLabel(ofSize: 12, weight: .light)
    
    private lazy var cardText: UILabel = setLabel(ofSize: 16, weight: .light, numberOfLines: 0)
    
    private lazy var cardButton: UIButton = {
        $0.setTitle("next", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemGreen
        $0.layer.cornerRadius = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIButton())
    
    private func setLabel(ofSize: CGFloat, weight: UIFont.Weight, numberOfLines: Int = 1) -> UILabel {
        let label = UILabel()
        label.font = .systemFont(ofSize: ofSize, weight: weight)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = numberOfLines
        return label
    }

    func setupCell(card: Card) {
        cardName.text = card.name
        cardTitle.text = card.title
        cardDate.text = card.date
        cardText.text = card.text
        cardImage.image = UIImage(named: card.image)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            cardName.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10),
            cardName.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 40),
            cardName.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -40),
            
            cardImage.topAnchor.constraint(equalTo: cardName.bottomAnchor, constant: 10),
            cardImage.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
            cardImage.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20),
            cardImage.heightAnchor.constraint(equalToConstant: 200),
            
            cardTitle.topAnchor.constraint(equalTo: cardImage.bottomAnchor, constant: 10),
            cardTitle.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 40),
            cardTitle.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -40),
            
            cardDate.topAnchor.constraint(equalTo: cardTitle.bottomAnchor, constant: 5),
            cardDate.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 40),
            cardDate.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -40),
            
            cardText.topAnchor.constraint(equalTo: cardDate.bottomAnchor, constant: 5),
            cardText.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
            cardText.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20),
            
            cardButton.topAnchor.constraint(equalTo: cardText.bottomAnchor, constant: 30),
            cardButton.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
            cardButton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20),
            cardButton.heightAnchor.constraint(equalToConstant: 50),
            
            cardButton.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -20)
            
        ])
    }
}
