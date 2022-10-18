# frozen_string_literal: true

module Turbochat
  class UserStatus < Application
    config.after_initialize do
      connection = ActiveRecord::Base.connection
      User.update_all(status: User.statuses[:offline]) if connection.table_exists?('users') && connection.column_exists?('users', 'status')
    rescue StandardError
      puts 'User statuses not updated'
    end
  end
end
