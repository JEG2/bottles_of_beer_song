desc "Verifies the song output."
task :spec do
  print "\e[31m"
  system "bash -c 'diff -u <(bin/bottles_of_beer) spec/full_song.txt'"
  print "\e[0m"
  if $?.success?
    puts "\e[32mPerfect match.\e[0m"
  end
end

task default: :spec
