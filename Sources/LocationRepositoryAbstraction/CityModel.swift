//
//  CityModel.swift
//  SBTSwiftProject
//
//  Created by Константин Богданов on 18.04.2021.
//  Copyright © 2020 Константин Богданов. All rights reserved.
//

/// Модель города
public struct CityModel: Decodable {

	/// Код города
	let codeIATA: String

	/// Код страны
	let countryCode: String

	/// Название города на английском
	let name: String

	/// Название на русском
	let nameRu: String?

	/// Инициализатор
	/// - Parameters:
	///   - codeIATA: код города
	///   - countryCode: код страны
	///   - name: название города на английском
	///   - nameRu: название на русском
	public init(codeIATA: String,
		 countryCode: String,
		 name: String,
		 nameRu: String?) {
		self.codeIATA = codeIATA
		self.countryCode = countryCode
		self.name = name
		self.nameRu = nameRu
	}
}
