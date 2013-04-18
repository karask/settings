#!/usr/bin/env ruby
# Run this after you install pathogen plugin and from inside .vim/ directory

require 'fileutils'
require 'open-uri'

git_plugins = [
  "git://github.com/scrooloose/nerdtree.git",
#  "git://github.com/vim-ruby/vim-ruby.git",
  "https://github.com/tpope/vim-haml",
  "https://github.com/plasticboy/vim-markdown.git",

  "git://github.com/garbas/vim-snipmate.git",
  "https://github.com/tomtom/tlib_vim.git",
  "https://github.com/MarcWeber/vim-addon-mw-utils.git",
  "https://github.com/honza/vim-snippets.git"
]


bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.cd(bundles_dir)

puts "trashing everything (lookout!)"
Dir["*"].each {|d| FileUtils.rm_rf d }


git_plugins.each do |url|
  puts "cloning #{url}"
  `git clone --depth 1 #{url}`
end


