module ApplicationHelper
  # navbar active tab
  def active?(*controller)
    'active' if controller.include?(params[:controller])
  end
end
