class FileReader
  def self.perform
    File.readlines('input.txt')
  end
end
