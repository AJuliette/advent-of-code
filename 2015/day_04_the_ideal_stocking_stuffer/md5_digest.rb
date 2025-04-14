require 'digest'

class MD5Digest
  def self.perform(secret_key, zero_count)
    number = 1
    zeros = '0' * zero_count

    loop do
      hash = Digest::MD5.hexdigest("#{secret_key}#{number}")
      return number if hash.start_with?(zeros)
      number += 1
    end
  end
end
