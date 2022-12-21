#!/usr/bin/env ruby

# frozen_string_literal: true
require 'pathname'
require 'fileutils'

folder_name = ARGV[0]
search_dir = Pathname.new(Dir.home)
search_results = search_dir.glob("**/#{folder_name}")
puts "Choose your path number"
search_results.each_with_index do |path, idx|
  puts "#{idx}. #{path}"
end
num_path = STDIN.gets.chomp.to_i
puts search_results[num_path]
folder_dir = search_results.find {|dir| dir.to_s =~ /#{search_dir}\/\w*\/*#{folder_name}/}
FileUtils.chdir(search_results[num_path])
current_shell = `echo $SHELL`.chomp.split('/')[-1]
puts "your default shell is '#{current_shell}' do you need use it?  Y/N"
shell_option = STDIN.gets.chomp.to_s.downcase
if shell_option == 'n'
  shells = `tail --lines=+2 /etc/shells`
  shells = shells.gsub!(/[^0-9A-Za-z]|usr|bin/, ' ').split.uniq!
  puts "Choose your shell"
  shells.each_with_index do |shell, idx|
    puts "#{idx}. #{shell}"
  end
  num_shell = STDIN.gets.chomp.to_i
  current_shell = shells[num_shell]
end

exec "#{current_shell}"

