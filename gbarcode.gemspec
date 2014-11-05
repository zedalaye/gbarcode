module GBarcode
  GemSpec = Gem::Specification.new do |s|
    s.name = 'gbarcode'
    s.version = '0.98.17'
    s.platform = Gem::Platform::RUBY
    s.summary = 'A C extension that wraps the GNU Barcode project.'
    s.description = s.summary + ' For more Ruby-ish syntax, you should use the Rbarcode gem.'
    s.author = [ 'Angel Pizarro', 'Pierre Yager' ]
    s.email = [ 'angel@delagoya.com', 'pierre@levosgien.net' ]
    s.homepage = 'https://github.com/zedalaye/gbarcode'

    s.required_ruby_version = '>= 1.8.7'

    s.files = %w{Rakefile CHANGELOG LICENSE README README_SWIG} + 
              Dir['ext/**/*.{c,h,i}'] +
              Dir['ext/**/*_GNU_BARCODE']

    s.extensions = Dir['ext/**/extconf.rb']
    s.require_path = 'lib'
  end
end
