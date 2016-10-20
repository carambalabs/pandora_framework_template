.PHONY: default

lint:
	bundle exec fastlane test_XXXXX
	bundle exec fastlane build_XXXXX
bootstrap:
	bundle install
default: 
	lint
