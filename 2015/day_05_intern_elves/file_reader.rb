class FileReader
  def self.perform
    File.readlines('input.txt', chomp: true)
  end
end
