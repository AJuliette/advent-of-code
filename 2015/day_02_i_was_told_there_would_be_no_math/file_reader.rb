class FileReader
  def self.perform
    File.readlines('input.txt').map { |line| line.split('x') }
  end
end
