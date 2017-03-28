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
    func addNewItemAtIndex(_ index: Int) -> Self
    func deleteItemAtIndex(_ index: Int) -> Self
    func moveItem(_ fromIndex: Int, toIndex: Int) -> Self
}
