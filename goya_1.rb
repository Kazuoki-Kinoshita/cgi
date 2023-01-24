require "cgi"
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "utf-8") {
  get_1 = cgi["goya_1"]

  "<html>
    <body>
      <p>譲渡先が自家消費ではないもののgoyaの情報</p>
      <p>文字列: #{get_1}</p>
    </body>
  </html>"
}
