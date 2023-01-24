require 'cgi'
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get_2 = cgi['goya_2']

  "<html>
    <body>
      <p>品質が悪いもの（false）のgoyaの情報</p>
      <p>文字列：#{get_2}</p>
    </body>
  </html>"
}
