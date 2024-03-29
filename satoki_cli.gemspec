
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "satoki_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "satoki_cli"
  spec.version       = SatokiCli::VERSION
  spec.authors       = ["satokiy"]
  spec.email         = ["syamada@netprotections.co.jp"]

  spec.summary       = 'satoki cli'
  spec.description   = 'satoki cli'
  spec.homepage      = 'https://github.com/satokiy/satoki-cli'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
    # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.17"
  spec.add_dependency "rake", "~> 10.0"
  spec.add_dependency "rspec", "~> 3.0"
  spec.add_dependency 'thor'
  spec.add_dependency 'dotenv'
  spec.add_dependency 'color_echo'

end
