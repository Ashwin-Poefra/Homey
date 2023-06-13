class StatusLogsController < ApplicationController

    def create
        @status = StatusLog.create!({ status: status_params })

        redirect_to project_index_path
    end

    private

    def status_params
        params.require(:status)
    end
end
