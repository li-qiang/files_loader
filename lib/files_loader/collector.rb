module FilesLoader
  class Collector

    def initialize(path)
      @path = path
      @files = []
    end

    def run
      fetch(@path)
      load
    end

    def fetch(path)
      Dir[ path + '/*' ].each do|file|
        if File.directory?(file)
          fetch(file)
        elsif file =~ /.rb$/
          @files << file
        end
      end
    end

    def load
      @files.each { |file| require file }
    end
  end
end