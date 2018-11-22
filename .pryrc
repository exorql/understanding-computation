Dir[File.expand_path('../the_simplest_computers/*', __FILE__) << '/*.rb'].each do |file|
  require file
end
