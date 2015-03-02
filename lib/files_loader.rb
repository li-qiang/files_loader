require "files_loader/version"
require "files_loader/collector"

module FilesLoader

  def self.run(path)
    Collector.new(path).run
  end

end
