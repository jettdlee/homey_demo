require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "Given missing name and status, then validation fails" do
    @project = Project.new
    refute @project.valid?
    assert_includes @project.errors.full_messages, "Name can't be blank"
    assert_includes @project.errors.full_messages, "Status must exist"
  end

  test "Given name is over limit, then validation fails" do
    @project = Project.new(status_id: statuses(:open).id, name: "a"*101)
    refute @project.valid?
    assert_includes @project.errors.full_messages, "Name is too long (maximum is 100 characters)"
  end

  test "Given correct parameters, then project is valid" do
    @project = Project.new(status_id: statuses(:open).id, name: "Project")
    assert @project.valid?
  end
end
