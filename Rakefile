desc 'Run benchmarks'
task :run_benchmarks do
  system('ruby -v')
  Dir['*.rb'].each do |bm|
    system('ruby', bm)
  end
end

task default: :run_benchmarks
