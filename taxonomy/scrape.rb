require 'net/http'
require 'uri'
require 'debug'

# scrapes taxonomy descriptions, which populate the Specialty dropdown box, and
# saves them into a text file.

URL = "https://opennpi.com/taxonomy/"
CODES_INPUT_PATH = "taxonomy/codes.txt"
DESC_OUTPUT_PATH ="taxonomy/descriptions.txt"
DESC_IN_PAGE = /<h1>(?<classification>[^<]+)<br><small>(?:Specialization: (?<specialization>[^<]+))?<\/small>/
OUTPUT_START = "ALL = [\n[DEFAULT_TEXT, DEFAULT_VALUE]"
OUTPUT_END = "\n]"
LINE = proc do |cls, spc, code, manual: false|
  short = "\n  [\"#{cls}\", # #{code}\n   \"#{cls}\"]"
  long = "\n  [\"#{cls} (#{spc})\", # #{code}\n   \"#{cls} -- #{spc}\"]"
  failed = "\n  # #{code} FAILED"
  failed_fixed = "#{failed}, fixed:"
  if cls.nil?
    ",#{failed}#{" AUTO" unless manual}"
  else
    ",#{failed_fixed if manual}#{spc ? long : short}"
  end
end
start_after_code = "2082S0105X"

codes = File.read(CODES_INPUT_PATH).split("\n").drop(1) # its first line is a comment
File.write(DESC_OUTPUT_PATH, OUTPUT_START) unless start_after_code

codes.each do |code|
  if start_after_code
    next if code != start_after_code
    start_after_code = nil
    next
  end
  res = Net::HTTP.get_response(URI(URL + code), "User-Agent": "Mozilla/5.0")
  if res.is_a?(Net::HTTPSuccess)
    description = res.body.match(DESC_IN_PAGE)
    cls = description[:classification]
    spc = description[:specialization]
    output = LINE.call(cls, spc, code)
  else
    cls = nil
    spc = nil
    debugger # gives me a chance to manually set cls and spc
    output = LINE.call(cls, spc, code, manual: true)
  end
  File.write(DESC_OUTPUT_PATH, output, mode: "a")
  sleep 0.5
end

File.write(DESC_OUTPUT_PATH, OUTPUT_END, mode: "a")

