require "files_loader/version"
require "files_loader/collector"

module FilesLoader

  def self.run(path, options={})
    Collector.new(path, options).run
  end

end
