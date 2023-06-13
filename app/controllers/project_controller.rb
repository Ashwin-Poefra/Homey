class ProjectController < ApplicationController

    def index
        @statuses = StatusLog.statuses.keys.to_a
        @last_status = StatusLog.last[:status] if StatusLog.last
        @status = StatusLog.all
        @comments = Comment.all
        @all = @status + @comments
        @all.sort_by! { |el| el[:created_at] }
        @all.pluck(:status, :comment).map { |s, c| { status: s, comment: c } }
    end
end
