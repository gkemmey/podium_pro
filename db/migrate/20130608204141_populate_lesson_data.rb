class PopulateLessonData < ActiveRecord::Migration
  def up
  
    say_with_time "creating lessons..." do
       
      Lesson.create({number: 1,
                     title: "Clear Speaking",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality",
                     without_protection: true)
       
      Lesson.create({number: 2,
                     title: "Lesson 2",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality",
                     without_protection: true)
       
      Lesson.create({number: 3,
                     title: "Lesson 3",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality",
                     without_protection: true)
       
      Lesson.create({number: 4,
                     title: "Lesson 4",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality",
                     without_protection: true)
       
      Lesson.create({number: 5,
                     title: "Lesson 5",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality",
                     without_protection: true)
       
      Lesson.create({number: 6,
                     title: "Lesson 6",
                     description: 
"Learn how to develop a confident speaking voice for both formal and informal speaking 
situations. Understand a few basic concepts about voice and vocal delivery including 
pitch, volume, rate, and vocal quality",
                     without_protection: true)
    end
    
    
    say_with_time "creating chapters..." do
    
      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 1,
                      title: "Introduction",
                      content: 
"Have you ever noticed that when you get nervous speaking you lose control of your voice, start talking fast and run out of breath? Or perhaps you don’t feel like you are heard?  Whatever the case, you are in good company! Your voice has a major impact on how well you communicate.

In this lesson, you’ll learn how to develop a confident speaking voice for both formal and informal speaking situations. The first step is to understand a few basic concepts about voice and vocal delivery and the second step is to practice. We’ll discuss concepts such as pitch, volume, rate, and vocal quality in today’s lesson and you’ll have plenty of opportunities to work on developing vocal confidence and effective vocal delivery.",
                      youtube_id: "",
                      assignment: false,
                      without_protection: true)

      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 2,
                      title: "Breathing",
                      content: xxxx
"Breath support is a key component to effective speaking. If you use shallow breathing called “clavicular” breathing, you will not be able to support the words you want to share. Good breathing will also calm you and make you feel less fearful.

Exercise:
Place one hand on your chest and the other on your abdomen. When you take a deep breath inward, the hand on the abdomen should rise higher than the one on the chest. This insures that the diaphragm is pulling air into the bases of the lungs. 
After exhaling through the mouth, take a slow deep breath in through your nose. Imagine that you are sucking in all the air in the room and hold it for a count of 7 (or as long as you are able, not exceeding 7).
Slowly exhale through your mouth for a count of 8. As all the air is released with relaxation, gently contract your abdominal muscles to completely evacuate the remaining air from the lungs. It is important to remember that we deepen respirations not by inhaling more air but through completely exhaling it. 
Repeat the cycle four more times for a total of 5 deep breaths and try to breathe at a rate of one breath every 10 seconds (or 6 breaths per minute). At this rate our heart rate variability increases.  This has a positive effect on cardiac health. 
",
                      youtube_id: "",
                      assignment: false,
                      without_protection: true)

      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 1,
                      title: "",
                      content: 
"",
                      youtube_id: "",
                      assignment: false,
                      without_protection: true)

      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 1,
                      title: "",
                      content: 
"",
                      youtube_id: "",
                      assignment: false,
                      without_protection: true)

      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 1,
                      title: "",
                      content: 
"",
                      youtube_id: "",
                      assignment: false,
                      without_protection: true)

      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 1,
                      title: "",
                      content: 
"",
                      youtube_id: "",
                      assignment: false,
                      without_protection: true)
    
    end
  end

  def down
  end
end
