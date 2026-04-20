# encoding: ascii-8bit

# Create the overall gemspec
spec = Gem::Specification.new do |s|
  s.name = 'openc3-cosmos-bridge-host'
  s.summary = 'OpenC3 COSMOS Host Bridge plugin'
  s.description = <<-EOF
    Allows COSMOS to execute arbitrary commands on the host
  EOF
  s.licenses = ['AGPL-3.0-only', 'Nonstandard']
  s.authors = ['OpenC3, Inc.']
  s.email = ['plugins@openc3.com']
  s.homepage = 'https://github.com/OpenC3/openc3'
  s.platform = Gem::Platform::RUBY

  if ENV['VERSION']
    s.version = ENV['VERSION'].dup
  else
    time = Time.now.strftime("%Y%m%d%H%M%S")
    s.version = '0.0.0' + ".#{time}"
  end
  s.files = Dir.glob("{targets,lib,tools,microservices,public}/**/*") + %w(Rakefile README.md LICENSE.txt bridge.txt plugin.txt)
  s.metadata = {
    "source_code_uri" => "https://github.com/OpenC3/openc3-cosmos-bridge-host",
    "openc3_store_title" => "Host Bridge",
    "openc3_store_keywords" => "bridge, host, shell",
    "openc3_store_image" => "public/store_img.jpg",
    "openc3_store_access_type" => "public",
    "openc3_cosmos_minimum_version" => "6.0.0"
  }
end
