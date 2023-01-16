require 'benchmark'

def case_statement(opt)
  case opt
  when 'x'
    'x'
  when 'z'
    'z'
  else
    'xyz'
  end
end

def if_statement(opt)
  case opt
  when 'x'
    'x'
  when 'z'
    'z'
  else
    'xyz'
  end
end

n = 100_000
Benchmark.bm do |x|
  x.report('Case  ') { n.times { ; case_statement('x'); } }
  x.report('IF    ') { n.times { ; if_statement('x'); } }
  x.report('Case e') { n.times { ; case_statement('xyz'); } }
  x.report('IF   e') { n.times { ; if_statement('xyz'); } }
end
