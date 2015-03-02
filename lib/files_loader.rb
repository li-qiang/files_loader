require "files_loader/version"
require "files_loader/collector"

module FilesLoader

  def self.run(path)
    files = Collector.run(path)
    files.each { |file| require file }
  end

end
