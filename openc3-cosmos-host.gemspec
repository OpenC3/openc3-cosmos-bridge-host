# encoding: ascii-8bit

# Create the overall gemspec
spec = Gem::Specification.new do |s|
  s.name = 'openc3-cosmos-host'
  s.summary = 'OpenC3 openc3-cosmos-host plugin'
  s.description = <<-EOF
    Allows COSMOS to execute arbitrary commands on the host
  EOF
  s.license = 'Nonstandard'
  s.authors = ['Jason Thomas']
  s.email = ['support@openc3.com']
  s.homepage = 'https://github.com/OpenC3/openc3'
  s.platform = Gem::Platform::RUBY

  if ENV['VERSION']
    s.version = ENV['VERSION'].dup
  else
    time = Time.now.strftime("%Y%m%d%H%M%S")
    s.version = '0.0.0' + ".#{time}"
  end
  s.files = Dir.glob("{targets,lib,tools,microservices}/**/*") + %w(Rakefile README.md LICENSE.txt bridge.txt plugin.txt)
end
