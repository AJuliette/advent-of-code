require 'minitest/autorun'
require_relative 'md5_digest'

class MD5DigestTest < Minitest::Test
  def test_secret_key_abcdef_5_zeros
    secret_key = 'abcdef'
    zero_count = 5
    assert_equal 609043, MD5Digest.perform(secret_key, zero_count)
  end

  def test_secret_key_pqrstuv_5_zeros
    secret_key = 'pqrstuv'
    zero_count = 5
    assert_equal 1048970, MD5Digest.perform(secret_key, zero_count)
  end

  def test_secret_key_yzbqklnj_5_zeros
    secret_key = 'yzbqklnj'
    zero_count = 5
    assert_equal 282749, MD5Digest.perform(secret_key, zero_count)
  end

  def test_secret_key_yzbqklnj_6_zeros
    secret_key = 'yzbqklnj'
    zero_count = 6
    assert_equal 9962624, MD5Digest.perform(secret_key, zero_count)
  end
end
