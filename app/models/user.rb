class User < ApplicationRecord
    # ActiveRecord::Migration
    has_secure_password
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    def change
       add_column :users, google_token, :string
       add_column :users, google_refresh_token, :string
    end
    def self.from_omniauth(auth)
        # Creates a new user only if it doesn't exist
        where(email: auth.info.email).first_or_initialize do |user|
            user.name = auth.info.name
            user.email = auth.info.email
        end
    end
    
end
