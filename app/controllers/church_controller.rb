class ChurchController < ApplicationController
  def history
    @content = Admin::Page.find_by_name!('history').content
  end

  def vision
    @content = Admin::Page.find_by_name!('vision').content
  end

  def fulltime
    @staffs = Staff.fulltime
  end

  def deacon
    @staffs = Staff.deacon
  end

  def elder
    @staffs = Staff.elder
  end

  def organization
    @content = Admin::Page.find_by_name!('organization').content
  end

  def location
    
  end

  def traffic
    
  end

  def contact
    
  end
end
