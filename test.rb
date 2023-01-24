require 'webrick'

server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}

server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'index.html.erb')
server.mount('/goya_1.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya_1.rb')
server.mount('/goya_2.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya_2.rb')

server.start