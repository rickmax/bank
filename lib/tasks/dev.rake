namespace :dev do
  
    desc "Set enverionment"
    task setup: :environment do
        if Rails.env.development?
            show_spinner("Destroy DB...","done)") { %x(rails db:drop)}
            show_spinner("Create DB...","done)") { %x(rails db:create)}
            show_spinner("Run migrations DB...","done)") { %x(rails db:migrate)}
            show_spinner("Add users...") { %x(rails dev:add_users)}
            show_spinner("Add accounts...") { %x(rails dev:add_accounts)}
            show_spinner("Populate Cities...") { %x(rails dev:populate_cities)}
            show_spinner("Create Banks...") { %x(rails dev:add_banks)}
        end
        if Rails.env.production?
            show_spinner("Run migrations DB...","done)") { %x(rails db:migrate)}
            show_spinner("Add users...") { %x(rails dev:add_users)}
            show_spinner("Add accounts...") { %x(rails dev:add_accounts)}
            show_spinner("Populate Cities...") { %x(rails dev:populate_cities)}
            show_spinner("Create Banks...") { %x(rails dev:add_banks)}
        end
    end
  
    desc "Add Users"
    task add_users: :environment do
        4.times do
            User.create!(
                email: Faker::Internet.email,
                password: Faker::Internet.password
            )
        end
    end

    desc "Add Accounts"
    task add_accounts: :environment do
        User.all.each { |x| x.accounts.create! }
    end

    desc "Populate Cities"
    task populate_cities: :environment do
        BrPopulate.populate
    end

    desc "Add Banks"
    task add_banks: :environment do
        City.all.each { |x| Bank.create( name: Faker::Bank.name, city: x ) }
    end
    
    private
    def show_spinner(msg_start, msg_end = "done!")
        spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
        spinner.auto_spin
        yield
        spinner.success("(#{msg_end}")
    end
end