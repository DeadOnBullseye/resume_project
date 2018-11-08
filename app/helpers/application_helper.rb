module ApplicationHelper

  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end

  def current_controller?(controller_path)
    params[:controller] == controller_path
  end

end
