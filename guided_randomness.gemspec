# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guided_randomness/version"

Gem::Specification.new do |s|
  s.name        = "guided_randomness"
  s.version     = GuidedRandomness::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Piotr Esse Szmielew"]
  s.email       = ["p.szmielew@roflcopter.pl"]
  s.homepage    = ""
  s.summary     = %q{Simple gem for Ruby which extends Array class, and gave possibility to pick element from it at random, however with certain probability (probability is given for each element).}
  s.description = %q{
    Usage:

    require 'guided_randomness'
    [1,2,3].get_rand([0.5, 0.3, 0.2])

    or
    require 'guided_randomness'
    [1,2,3].get_rand([4,12,9])
  }

  s.rubyforge_project = "guided_randomness"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
