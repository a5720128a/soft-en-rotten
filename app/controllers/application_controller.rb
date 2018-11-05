class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #สามารถเอาไปใช้ใน View ได้
  helper_method :current_user
  #โดยตรวจสอบว่ามีผู้ใช้ในฐานข้อมูลที่มีรหัสเซสชันที่ระบุ
  def current_user
    #เก็บข้อมูลผู้ใช้ว่า login or logout
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end


