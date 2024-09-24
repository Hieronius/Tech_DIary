//import UIKit
//
//// MARK: - RouterAssemblyProtocol
//
///// Сборщик роутера.
//protocol RouterAssemblyProtocol {
//
//	/// Создает роутер.
//	/// - Parameter window: window.
//	/// - Returns: роутер.
//	func makeRouter(window: UIWindow) -> RouterProtocol
//}
//
//// MARK: - Budget.Router
//
//extension Budget {
//	/// Роутер приложения
//	final class Router {
//
//		private weak var window: UIWindow?
//		private weak var navigationController: UINavigationController?
//		private let scenesAssembly: Budget.ScenesAssembly
//		private let appSettingsStorage: StageStorage
//
//		init(
//			window: UIWindow,
//			scenesAssembly: Budget.ScenesAssembly,
//			appSettingsStorage: StageStorage
//		) {
//			self.window = window
//			self.scenesAssembly = scenesAssembly
//			self.appSettingsStorage = appSettingsStorage
//		}
//	}
//}
//
//// MARK: - RouterProtocol
//
//extension Budget.Router: RouterProtocol {
//
//	func start() {
//		let rootViewController = scenesAssembly.makeIntro { [weak self] in
//			guard let self else { return }
//			self.navigationController?.overrideUserInterfaceStyle = .light
//			self.navigationController?.view.backgroundColor = .systemBackground
//			if self.appSettingsStorage.launchedBefore {
//				self.openMainScreen()
//			} else {
//				self.appSettingsStorage.launchedBefore = true
//				self.openOnboarding()
//			}
//
//		}
//		let navigationController = UINavigationController(rootViewController: rootViewController)
//		window?.rootViewController = navigationController
//		self.navigationController = navigationController
//		self.navigationController?.navigationBar.isHidden = true
//	}
//}
//
//// MARK: - Private
//
//private extension Budget.Router {
//
//	func openOnboarding() {
//		let onboarding = scenesAssembly.makeOnboarding()
//		navigationController?.setViewControllers([onboarding], animated: true)
//	}
//
//	func openMainScreen() {
//		let mainScreen = scenesAssembly.makeMain()
//		navigationController?.setViewControllers([mainScreen], animated: false)
//	}
//}
//
//// MARK: - Budget.RouterAssembly
//
//extension Budget {
//	final class Assembly: RouterAssemblyProtocol {
//
//		private let checker: AppVerifying
//		private let store: StageStorage
//
//		init(
//			checker: AppVerifying,
//			store: StageStorage
//		) {
//			self.checker = checker
//			self.store = store
//		}
//
//		func makeRouter(window: UIWindow) -> RouterProtocol {
//			let assembly = Budget.ScenesAssembly(checker: checker, store: store)
//			return Budget.Router(window: window, scenesAssembly: assembly, appSettingsStorage: store)
//		}
//	}
//}
//
//// MARK: - Budget.ScenesAssembly
//
//extension Budget {
//	/// Сборщик сцен
//	final class ScenesAssembly {
//		private let checker: AppVerifying
//		private let store: StageStorage
//
//		init(checker: AppVerifying, store: StageStorage) {
//			self.checker = checker
//			self.store = store
//		}
//
//		/// Cоздает экран интро.
//		/// - Parameters:
//		///   - onFinish: Кложур, уведомляющий о завершении онбординга.
//		/// - Returns: Экран.
//		func makeIntro(onFinish: @escaping () -> Void) -> UIViewController {
//			Intro.ViewController(checker: checker, onFinish: onFinish)
//		}
//
//		/// Создает экран онбординга
//		/// - Returns: Экран онбординга
//		func makeOnboarding() -> UIViewController {
//			FirstOnboardingViewController(appSettingsStorage: store, checker: checker)
//		}
//
//		/// Создает первый отображаемый экран
//		/// - Returns: Экран аутентификация, если вход по биометрии включен, иначе главный экран
//		func makeMain() -> UIViewController {
//			TabBarController(appSettingsStorage: store, checker: checker)
//		}
//	}
//}



