class PopulateLessonData < ActiveRecord::Migration
  def up
  
    say_with_time "creating lessons..." do
       
      Lesson.create({number: 1,
                     title: "Clear Speaking",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality"},
                     without_protection: true)
       
      Lesson.create({number: 2,
                     title: "Clear Speech Points",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality"},
                     without_protection: true)
       
      Lesson.create({number: 3,
                     title: "Transitions",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality"},
                     without_protection: true)
       
      Lesson.create({number: 4,
                     title: "Body Language",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality"},
                     without_protection: true)
       
      Lesson.create({number: 5,
                     title: "Facial Expressions",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality"},
                     without_protection: true)
       
      Lesson.create({number: 6,
                     title: "Connecting with Your Audience",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality"},
                     without_protection: true)
    end
  end

  def down
  end
end
