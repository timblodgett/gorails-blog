require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? returns true for draft blog post" do
    assert blog_posts(:draft).draft?
  end

  test "draft? returns true for published blog post" do
    refute blog_posts(:published).draft?
  end

  test "draft? returns true for scheduled blog post" do
    refute blog_posts(:scheduled).draft?
  end

  test "published? returns true for published blog post" do
    assert blog_posts(:published).published?
  end

  test "published? returns true for draft blog post" do
    refute blog_posts(:draft).published?
  end

  test "published? returns true for scheduled blog post" do
    refute blog_posts(:scheduled).published?
  end

  test "scheduled? returns true for scheduled blog post" do
    assert blog_posts(:scheduled).scheduled?
  end

  test "scheduled? returns true for published blog post" do
    refute blog_posts(:published).scheduled?
  end

  test "scheduled? returns true for draft blog post" do
    refute blog_posts(:draft).scheduled?
  end
end
