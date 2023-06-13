class ProjectController < ApplicationController

    def index
        @statuses = StatusLog.statuses.keys.to_a
        @last_status = StatusLog.last[:status] if StatusLog.last
        @status = StatusLog.all
    end
end
