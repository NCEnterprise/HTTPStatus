require 'net/http'

def check_status_code(url)
  uri = URI(url)

  begin
    response = Net::HTTP.get_response(uri)

    if response.code.to_i == 200
      return "#{url} - Status Code: #{response.code} (OK)"
    else
      return "#{url} - Status Code: #{response.code} (Not OK)"
    end
  rescue StandardError => e
    return "#{url} - Error: #{e.message}"
  end
end

if ARGV.length != 1
  puts "Usage: ruby status_checker.rb <input_file>"
  exit(1)
end

input_file = ARGV[0]

if !File.exist?(input_file)
  puts "Input file '#{input_file}' not found."
  exit(1)
end

# Read URLs from the input file and check their status codes
File.foreach(input_file) do |line|
  url = line.chomp
  result = check_status_code(url)
  puts result
end
