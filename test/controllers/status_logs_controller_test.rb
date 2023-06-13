require "test_helper"

class StatusLogsControllerTest < ActionDispatch::IntegrationTest
  fixtures :status_logs

  test "should change status" do
    assert_difference('StatusLog.count') do
      post status_logs_url, params: { status: status_logs(:one).status }
      assert_redirected_to project_index_path
    end
  end
end
