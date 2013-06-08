class PopulateLessonData < ActiveRecord::Migration
  def up
    say_with_time "creating lessons..." do
       
      Lesson.create({number: 1,
                     title: "Lesson 1",
                     description: "This lesson will show you how to speak like a pro.",
                     youtube_id: "0KHbt6rrvzg",
                     assignment: "Now you try it.  Make a video of you speaking and give us the link."},
                     without_protection: true)
       
      Lesson.create({number: 2,
                     title: "Lesson 2",
                     description: "This lesson will show you how to speak like a pro.",
                     youtube_id: "0KHbt6rrvzg",
                     assignment: "Now you try it.  Make a video of you speaking and give us the link."},
                     without_protection: true)
       
      Lesson.create({number: 3,
                     title: "Lesson 3",
                     description: "This lesson will show you how to speak like a pro.",
                     youtube_id: "0KHbt6rrvzg",
                     assignment: "Now you try it.  Make a video of you speaking and give us the link."},
                     without_protection: true)
       
      Lesson.create({number: 4,
                     title: "Lesson 4",
                     description: "This lesson will show you how to speak like a pro.",
                     youtube_id: "0KHbt6rrvzg",
                     assignment: "Now you try it.  Make a video of you speaking and give us the link."},
                     without_protection: true)
       
      Lesson.create({number: 5,
                     title: "Lesson 5",
                     description: "This lesson will show you how to speak like a pro.",
                     youtube_id: "0KHbt6rrvzg",
                     assignment: "Now you try it.  Make a video of you speaking and give us the link."},
                     without_protection: true)
       
      Lesson.create({number: 6,
                     title: "Lesson 6",
                     description: "This lesson will show you how to speak like a pro.",
                     youtube_id: "0KHbt6rrvzg",
                     assignment: "Now you try it.  Make a video of you speaking and give us the link."},
                     without_protection: true)
    end
  end

  def down
  end
end
