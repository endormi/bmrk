require 'benchmark'

h = { a: { b: { c: 'foo' } } }

h2 = { 'a' => 'b' }
h3 = { a: 'b' }

n = 10_000
Benchmark.bm do |x|
  x.report('#dig  ') { n.times { ; h.dig(:a, :b, :c); } }
  x.report('#[]   ') { n.times { ; h[:a][:b][:c]; } }
  x.report('#fetch') { n.times { ; h.fetch(:a).fetch(:b).fetch(:c); } }
end

Benchmark.bm do |x|
  x.report('String') { n.times { ; h2['a']; } }
  x.report('Symbol') { n.times { ; h3[:a]; } }
end
