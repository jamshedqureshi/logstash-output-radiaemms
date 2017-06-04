Gem::Specification.new do |s|
  s.name          = 'logstash-output-radiaemms'
  s.version       = '0.1.0'
  s.licenses      = ['Apache License (2.0)']
  s.summary       = 'Logstash Output Plugin for Radia Endpoint Manager Messaging Server'
  s.description   = 'An output plugin that streams events to Radia Endpoint Manager Messaging Server via http'
  s.homepage      = 'https://github.com/jamshedqureshi/logstash-output-radiaemms'
  s.authors       = ['jamshedqureshi']
  s.email         = 'quiz.oxis@gmail.com'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency "logstash-codec-plain"
  s.add_development_dependency "logstash-devutils"
end
