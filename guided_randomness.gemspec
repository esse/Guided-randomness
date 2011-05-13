# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guided_randomness/version"

Gem::Specification.new do |s|
  s.name        = "guided_randomness"
  s.version     = GuidedRandomness::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Piotr Esse Szmielew", "Radosław Bułat", "Robert Pankowecki"]
  s.email       = ["p.szmielew@roflcopter.pl", "radek.bulat@gmail.com", "robert.pankowecki@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Simple gem for Ruby which extends Array class, and gave possibility to pick element from it at random, however with certain probability (probability is given for each element).}
  s.description = %q{Simple gem for Ruby which extends Array class, and gave possibility to pick element from it at random, however with certain probability (probability is given for each element). Adds the get_rand function to array class, which take array of chances as arguments (for example [1,2,3].get_rand([3,4,5]))}
  s.rubyforge_project = "guided_randomness"

  s.add_dependency "bsearch", "~> 1.5"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
