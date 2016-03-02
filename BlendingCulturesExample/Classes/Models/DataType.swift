//
//  DataType.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/03.
//
//

import UIKit

protocol DataType {
    var numberOfItems: Int { get }
    func addNewItemAtIndex(index: Int) -> Self
    func deleteItemAtIndex(index: Int) -> Self
    func moveItem(fromIndex: Int, toIndex: Int) -> Self
}
