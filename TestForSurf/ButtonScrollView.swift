//
//  ButtonScrollView.swift
//  TestForSurf
//
//  Created by Andrei Kovryzhenko on 12.02.2023.
//

import UIKit

class ButtonScrollView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cells = [CourseButtons]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
    
        backgroundColor = .white
        delegate = self
        dataSource = self
        register(ButtonCell.self, forCellWithReuseIdentifier: ButtonCell.reuseId)
    
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func set(cells: [CourseButtons]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: ButtonCell.reuseId, for: indexPath) as! ButtonCell
        cell.button.setTitle(cells[indexPath.row].title, for: .normal)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cells[indexPath.row].width, height: 44)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
