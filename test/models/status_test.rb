require "test_helper"

class StatusTest < ActiveSupport::TestCase
  test "Given missing name, then validation fails" do
    @status = Status.new
    refute @status.valid?
    assert_includes @status.errors.full_messages, "Name can't be blank"
  end

  test "Given correct parameters, then status is valid" do
    @status = statuses(:open)
    assert @status.valid?
  end
end

