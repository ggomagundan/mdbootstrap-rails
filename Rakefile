lib_path = File.join(File.dirname(__FILE__), 'lib')
$:.unshift(lib_path) unless $:.include?(lib_path)

require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
  t.verbose = false
  t.warning = false
end
task default: :test
