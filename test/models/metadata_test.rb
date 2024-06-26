require "test_helper"

class MetadataTest < ActiveSupport::TestCase
  test "title attribute" do
    assert_equal "Hello", Metadata.new("<title>Hello</title>").title
  end

  test "missing title attribute" do
    assert_nil Metadata.new.title
  end

  test "meta description" do
    assert_equal "Hi! im a description", Metadata.new("<meta name='description' content='Hi! im a description'>").description
  end

  test "missing meta description" do
    assert_nil Metadata.new.description
  end

  test "image" do
    assert_equal "https://example.org/favicon.ico", Metadata.new("<meta property='og:image' content='https://example.org/favicon.ico'>").image
  end

  test "missing image" do
    assert_nil Metadata.new.image
  end
end
