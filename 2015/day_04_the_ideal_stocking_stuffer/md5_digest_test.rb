require 'minitest/autorun'
require_relative 'md5_digest'

class MD5DigestTest < Minitest::Test
  def test_secret_key_abcdef
    secret_key = 'abcdef'
    assert_equal 609043, MD5Digest.perform(secret_key)
  end

  def test_secret_key_pqrstuv
    secret_key = 'pqrstuv'
    assert_equal 1048970, MD5Digest.perform(secret_key)
  end

  def test_secret_key_yzbqklnj
    secret_key = 'yzbqklnj'
    assert_equal 282749, MD5Digest.perform(secret_key)
  end
end
