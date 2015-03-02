module FilesLoader
  class Collector
    def self.run(path)
      files = []
      Dir[path + '/*'].each do|file|
        if File.directory?(file)
          run(file)
        elsif file =~ /(.*).rb/
           files << file
        end
      end
      files
    end
  end
end