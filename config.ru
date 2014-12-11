use Rack::Static, 
  :urls => ["/css", "/images", "/js"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
