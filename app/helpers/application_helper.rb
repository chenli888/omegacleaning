module ApplicationHelper
  
  def sign_in(user)
    remember_token = SecureRandom.urlsafe_base64
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, Digest::SHA1.hexdigest(remember_token.to_s))
    self.current_user = user
  end

  def signed_in?
    !current_user.nil?
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    remember_token = Cleaner.digest(cookies[:remember_token])
    @current_user ||= Cleaner.find_by(remember_token: remember_token)
    @current_user ||= Company.find_by(remember_token: remember_token)
    @current_user ||= Admin.find_by(remember_token: remember_token)
  end
  
  def sign_out
    current_user.update_attribute(:remember_token, Digest::SHA1.hexdigest(SecureRandom.urlsafe_base64.to_s))
    cookies.delete(:remember_token)
    self.current_user = nil
  end
  
  def show_new_company_item?
    if !signed_in?
      return false
    end
    if current_user.instance_of?(Admin)
      return true
    else
      return false
    end
  end
  
  def show_new_cleaner_item?
    if !signed_in?
      return false
    end
    if current_user.instance_of?(Admin)
      return true
    else
      return false
    end
  end
end
