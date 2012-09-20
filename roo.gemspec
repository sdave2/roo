# -*- encoding: utf-8 -*-
require File.expand_path('../lib/roo/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Thomas Preymesser", "Shwetank Dave", "Andrew Forward"]
  gem.email         = ["thopre@gmail.com", "shwetank.dave@cenx.com", "andrew.forward@cenx.com"]
  gem.description   = %q{Spreadsheet parser for Xls, Xlsx, Google Docs and More}
  gem.summary       = %q{Spreadsheet parser for Xls, Xlsx, Google Docs and More}
  gem.homepage      = "http://roo.rubyforge.org/"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "roo"
  gem.require_paths = ["lib"]

  gem.add_dependency('spreadsheet','> 0.6.4')
  gem.add_dependency('rubyzip')
  gem.add_dependency('google-spreadsheet-ruby')
  gem.add_dependency('choice')
  gem.add_dependency('todonotes')

  gem.add_development_dependency('nokogiri') #, '>= 0.0.1'
  #TODO: brauchen wir das noch? depend_on 'gimite-google-spreadsheet-ruby','>= 0.0.5'
  #depend_on 'febeling-rubyzip','>= 0.9.2' # meine aktuelle Version
  #TODO: warum brauchen wir das? es lief doch auch vorher ohne dieses spezielle gem

  gem.version       = Roo::VERSION
end

