module FilesLoader
  class Collector

    def initialize(path, options)
      @path = path
      @files = []
      @options = options
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
          @files << file unless except?(file)
        end
      end
    end

    def except?(file)
      (@options[:except]||[]).find do|reg|
        Regexp.new(reg) =~ file
      end
    end

    def load
      @files.each { |file| require file }
    end
  end
end