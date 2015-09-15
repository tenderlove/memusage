require 'json'

File.open(ARGV[0]) do |f|
  f.each_line do |line|
    info = JSON.parse(line)
    if info['type'] == 'STRING'
      next unless info['file']
      if info['file'] =~ /dependencies.rb$/
        p info
      end
      #puts info['file']
    end
  end
end
