# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'files_loader/version'

Gem::Specification.new do |spec|
  spec.name          = "files_loader"
  spec.version       = FilesLoader::VERSION
  spec.authors       = ["li-qiang"]
  spec.email         = ["li.q.q@qq.com"]
  spec.summary       = %q{文件加载工具}
  spec.description   = %q{加载一个目录下的所有rb文件}
  spec.homepage      = "https://github.com/li-qiang/ruby_files_loader"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
