class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    
    def normalize_money(x)
        ('%.2f' % x.to_s.gsub(/\D/, '')).to_f / 100
        # puts "\n\n\nEnter X: #{x}\n"
        # x = x.to_s
        # puts "To_s X: #{x}\n"
        # x = x.gsub(/\D/, '')
        # puts "gsub X: #{x}\n"
        # x = '%.2f' % x.to_f
        # puts "to_f: #{x}\n"
        # x = x / 100
        # puts "/ 100: #{x}"
        # x
    end
end
