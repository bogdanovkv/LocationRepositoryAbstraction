//
//  LocationRepository.swift
//  SBTSwiftProject
//
//  Created by Константин Богданов on 18.04.2021.
//  Copyright © 2020 Константин Богданов. All rights reserved.
//

import Foundation

/// Репозиторий работы с локациями
public protocol LocationRepositoryProtocol {

	/// Получает место где находится пользователь
	/// - Parameter completion: блок, выполняющийся при получении локации
	func loadLocation(_ completion: @escaping (Result<LocationModel, Error>) -> Void)

	/// Загружает список городов
	/// - Parameter completion: блок, выполняющийся при получении списка городов
	func loadCities(_ completion: @escaping (Result<[CityModel], Error>) -> Void)

	/// Загружает список стран
	/// - Parameter completion: блок, выполняющийся при получении списка стран
	func loadCountries(_ completion: @escaping (Result<[CountryModel], Error>) -> Void)

	/// Загружает список аэропортов
	/// - Parameter completion: блок, выполняющийся при получении списка стран
	func loadAirports(_ completion: @escaping (Result<[AirportModel], Error>) -> Void)

	/// Сохраняет страны
	/// - Parameters:
	///   - countries: страны
	///   - completion: блок, выполняющийся по завершению сохранения
	func save(countries: [CountryModel], completion: @escaping () -> Void)

	/// Сохраняет города
	/// - Parameters:
	///   - countries: города
	///   - completion: блок, выполняющийся по завершению сохранения
	func save(cities: [CityModel], completion: @escaping () -> Void)

	/// Сохраняет аэропорты
	/// - Parameters:
	///   - countries: аэропорты
	///   - completion: блок, выполняющийся по завершению сохранения
	func save(airports: [AirportModel], completion: @escaping () -> Void)

	/// Получает город по имени
	/// - Parameter name: имя
	func getCity(with name: String) -> CityModel?

	/// Получает страну по имени
	/// - Parameter name: имя
	func getCountry(with name: String) -> CountryModel?

	/// Очищает данные по городам, странам и аэропортам
	func clearLocations()

	/// Получает все страны
	func getCountries() -> [CountryModel]

	/// Получает все города
	func getCities(for country: CountryModel) -> [CityModel]

	/// Получает все аэропорты
	func getAirports() -> [AirportModel]
}
