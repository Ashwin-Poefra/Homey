class StatusLog < ApplicationRecord

    enum :status, ["Backlog", "Todo", "In prgress", "Done"]
end
