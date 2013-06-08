class SeedBasicData < ActiveRecord::Migration
  def up

    #if RAILS_ENV == "development"
      
      say_with_time "creating dummy users..." do
        
        last_names = %w(Smith Johnson Williams Brown Jones Miller Davis Garcia Allen Wilson Hall Anderson Taylor Thomas)
        last_names.concat %w(Robinson Moore Martin Jackson Thompson White Lopez Lee Harris Clark Lewis Robertson Walker Young)
        
        first_names = %w(Jacob Michael Matthew Andrew Christopher Daniel Joseph Ethan William Anthony David Ryan John James)
        first_names.concat %w(Emily Elizabeth Sarah Jessica Ann Rachel Jennifer Lily Jenna Mary Kimberly Paige Michelle Leah)
        
        first_names.each do |first|
          last_names.each do |last|
            new_user = User.create!({email: first.downcase + "." + last.downcase + "@example.com", 
                                     name: "#{first.capitalize} #{last.capitalize}",
                                     password: "please", 
                                     password_confirmation: "please"},
                                     without_protection: true)
          end
        end
      end
    #end
  end

  def down
  end
end
