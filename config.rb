$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require "./source/helpers/view_helpers"
require "./source/helpers/comment_helpers"
helpers ViewHelpers
helpers CommentHelpers

# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

# Activate Middleman Blog
activate :blog

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
# end

# Syntax Highlighting
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true

activate :syntax, wrap: true
  # option :css_class,     'highlight', 'Class name applied to the syntax-highlighted output.'
  # option :line_numbers,  false,       'Generate line numbers.'
  # option :wrap,          true,        'Wrap the highlighted content in a container (<pre> or <div>, depending on whether :line_numbers is on).'
  # option :lexer_options, {},          'Options for the Rouge lexers.'

require 'jsl/shell_lexer'


activate :directory_indexes
set :build_dir, "tmp"

# Define assets directories
set :css_dir,    'stylesheets'
set :js_dir,     'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
