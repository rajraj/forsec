use Rack::Static,
  :urls => ["/images", "/javascripts", "/stylesheets"],
  :root => "public",
  :header_rules => [[:all, {'Cache-Control' => 'public, max-age=86400'}]]

map "/" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/html'
      },
      File.open('public/index.html', File::RDONLY)
    ]
  }
end

map "/about.html" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/html'
      },
      File.open('public/about.html', File::RDONLY)
    ]
  }
end

map "/services.html" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/html'
      },
      File.open('public/services.html', File::RDONLY)
    ]
  }
end

map "/cctv-rental.html" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/html'
      },
      File.open('public/cctv-rental.html', File::RDONLY)
    ]
  }
end

map "/portfolio.html" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/html'
      },
      File.open('public/portfolio.html', File::RDONLY)
    ]
  }
end

map "/contact.html" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/html'
      },
      File.open('public/contact.html', File::RDONLY)
    ]
  }
end
