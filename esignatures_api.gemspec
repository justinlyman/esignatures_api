
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "esignatures_api/version"

Gem::Specification.new do |spec|
  spec.name          = "esignatures_api"
  spec.version       = EsignaturesApi::VERSION
  spec.authors       = ["Justin Lyman\n"]
  spec.email         = ["justinlyman@gmail.com"]

  spec.summary       = "eSignatures.io API wrapper"
  spec.description   = "eSignatures.io API wrapper"
  spec.homepage      = "https://github.com/justinlyman/esignatures_api"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development Dependencies
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.11.3"
  spec.add_development_dependency "webmock", "~> 3.4.2"

  # Runtime Dependencies
  spec.add_runtime_dependency "rest-client", "~> 2.0.2"
  spec.add_runtime_dependency "json", "~> 2.1.0"
end
