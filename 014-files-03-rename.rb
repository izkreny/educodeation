files = Dir["*-*.rb"]

if files.empty?
  puts("No files to rename!")
  exit
end

puts("Replacing '-' character with the '_' one and renaming following .rb files:")

files.each do |filename|
  new_filename = filename.gsub('-', '_')
  # next if File.exist?(new_filename)
  puts("#{filename}".ljust(38) + "->".center(4) + " #{new_filename}".ljust(38))
  # For system default "mv" command we can use File.rename(old, new)
  system("git mv #{filename} #{new_filename}")
end
