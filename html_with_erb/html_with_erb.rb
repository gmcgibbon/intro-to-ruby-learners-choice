require 'erb'
require 'ostruct'

folder_path = File.dirname(File.expand_path(__FILE__))

erb_file = ERB.new(File.read("#{folder_path}/lib/greeting.html.erb"))

context_variables = { name: 'Gannon' }

context = OpenStruct.new(context_variables).instance_eval { binding }

puts erb_file.run(context)
