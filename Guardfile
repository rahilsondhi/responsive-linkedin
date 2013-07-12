# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end

guard 'sass',
  input: 'scss',
  output: 'public/css',
  all_on_start: true,
  line_numbers: true

guard 'coffeescript',
  input: 'coffee',
  output: 'public/js',
  all_on_start: true,
  line_numbers: true
