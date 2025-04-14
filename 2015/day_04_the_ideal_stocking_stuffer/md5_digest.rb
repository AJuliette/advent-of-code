require 'digest'

class MD5Digest
  def self.perform(secret_key)
    number = 1

    loop do
      hash = Digest::MD5.hexdigest("#{secret_key}#{number}")
      return number if hash.start_with?("00000")
      number += 1
    end
  end
end
