class User < ActiveRecord::Base
    has_secure_password

    before_save :create_remember_token
end

private

    def create_remember_token
        self.remember_token = SecureRandom.urlsafe_base64
    end 