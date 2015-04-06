require 'test_helper'

class VersionTest < ActiveSupport::TestCase
  test "should not save without a version and project id" do
    version = Version.new
	assert_not version.save
  end
  
  test "should not save without a version" do
    version = Version.new
	version.project_id = 1
	assert_not version.save
  end
  
  test "should not save without a project id" do
    version = Version.new
	version.version = "0.0.0.1"
	assert_not version.save
  end
  
end
