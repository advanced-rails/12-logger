class LogsController < ApplicationController
  def index
    page = params[:page].to_i
    logs = Log.limit(5).offset(page * 5).order(datetime: 'asc')
    count = Log.count
    render json: {logs: logs, count: count}
  end

  def create
    lg = Log.create!(params[:log].permit(:uid, :email, :role, :controller, :action, :params, :datetime))
    ap lg
    head :ok
  end
end
