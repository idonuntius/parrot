.PHONY: setup
setup:
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: build
build:
	flutter build web --web-renderer html --csp

.PHONY: clean
clean:
	flutter clean
	flutter pub get

.PHONY: build_runner
build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs

