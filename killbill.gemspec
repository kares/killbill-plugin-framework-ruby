version = File.read(File.expand_path('../VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.name        = 'killbill'
  s.version     = version
  s.summary     = 'Framework to write Killbill plugins in Ruby.'
  s.description = 'Base classes to write plugins.'

  s.required_ruby_version = '>= 1.9.3'

  s.license = 'Apache License (2.0)'

  s.author   = 'Killbill core team'
  s.email    = 'killbilling-users@googlegroups.com'
  s.homepage = 'http://www.killbilling.org'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.bindir        = 'bin'
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.rdoc_options << '--exclude' << '.'

  s.add_development_dependency 'jbundler', '~> 0.4.1'
  s.add_development_dependency 'rack', '>= 1.5.2'
  s.add_development_dependency 'rake', '>= 0.8.7'
  s.add_development_dependency 'rspec', '~> 2.12.0'
  s.add_development_dependency 'sinatra', '~> 1.3.4'

  s.requirements << "jar 'com.ning.billing:killbill-api', '0.1.56-SNAPSHOT'"
  # For testing only
  s.requirements << "jar 'com.ning.billing:killbill-util:tests', '0.1.56-SNAPSHOT'"
end
