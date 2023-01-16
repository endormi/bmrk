require 'benchmark'
require 'set'

arr = []
hash = {}
set = Set.new

list = Array.new(10_000) { rand(1..100_000) }

Benchmark.bm(10) do |x|
  x.report('Arr      ') { list.each { |i| arr.include?(i) } }
  x.report('Arr-assoc') { list.each { |i| arr.assoc(i) } }
  x.report('Hash     ') { list.each { |i| hash.key?(i) } }
  x.report('Set      ') { list.each { |i| set.include?(i) } }
end
