class AddChapters < ActiveRecord::Migration
  def up
  
    say_with_time "creating chapters..." do
    
      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 1,
                      title: "Introduction",
                      content: 
"Have you ever noticed that when you get nervous speaking you lose control of your voice, start talking fast and run out of breath? Or perhaps you don't feel like you are heard?  Whatever the case, you are in good company! Your voice has a major impact on how well you communicate.

In this lesson, you'll learn how to develop a confident speaking voice for both formal and informal speaking situations. The first step is to understand a few basic concepts about voice and vocal delivery and the second step is to practice. We'll discuss concepts such as pitch, volume, rate, and vocal quality in today's lesson and you'll have plenty of opportunities to work on developing vocal confidence and effective vocal delivery.",
                      youtube_id: "",
                      assignment: false},
                      without_protection: true)

      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 2,
                      title: "Breathing",
                      content: 
"Breath support is a key component to effective speaking. If you use shallow breathing called \"clavicular\" breathing, you will not be able to support the words you want to share. Good breathing will also calm you and make you feel less fearful.

Exercise:
<ol>
<li>Place one hand on your chest and the other on your abdomen. When you take a deep breath inward, the hand on the abdomen should rise higher than the one on the chest. This insures that the diaphragm is pulling air into the bases of the lungs.</li>
<li>After exhaling through the mouth, take a slow deep breath in through your nose. Imagine that you are sucking in all the air in the room and hold it for a count of 7 (or as long as you are able, not exceeding 7).</li>
<li>Slowly exhale through your mouth for a count of 8. As all the air is released with relaxation, gently contract your abdominal muscles to completely evacuate the remaining air from the lungs. It is important to remember that we deepen respirations not by inhaling more air but through completely exhaling it.</li>
<li>Repeat the cycle four more times for a total of 5 deep breaths and try to breathe at a rate of one breath every 10 seconds (or 6 breaths per minute). At this rate our heart rate variability increases.  This has a positive effect on cardiac health.</li>
</ol>",
                      youtube_id: "",
                      assignment: false},
                      without_protection: true)

      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 3,
                      title: "Rate of Speech",
                      content: 
"Generally a <b>FASTER</b> speaking speed signals <i>urgency, excitement, passion or raw emotion</i>.
It can lead the audience to expect something thrilling is going to occur. They hold their breath and go for the ride with you.
In contrast a <b>SLOWER</b> speaking rate signals <i>importance, seriousness, or that you have significant ideas</i>.

Practice:
<ol>
<li>Turn on a video camera or webcam and pick a paragraph or two from a book or magazine.</li>
<li>Record yourself reading it once very fast.</li>
<li>Record yourself reading it once very slow.</li>
<li>Watch your videos back, noting how the rates sound in each.</li>
<li>Record a few videos until you find a rate that is comfortable for you.</li>
</ol>",
                      youtube_id: "",
                      assignment: false},
                      without_protection: true)

      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 4,
                      title: "Speech Volume and Quality",
                      content: 
"The volume of your voice should be appropriate for the content of your speech.  If you are talking about something that is exciting, something you are passionate about, you can be a little louder than if you are talking about something that is sad or serious. You may also want to change to a loud or quiet voice to emphasize a word or point. 

Practice:
<ol>
<li>Record a short video of yourself in which you experiment with different volumes of speech.  Consider:</li>
<ul>
  <li>Say your full name very loud while not straining your voice.</li>
  <li>Say your full name very soft while not straining your voice.</li>
  <li>Experiment with different volumes for different content so that you can see a true range of the effects that you can create for an audience.</li>
</ul>
<li>Watch your videos and practice creating the different effects.</li>
<li>Read the passage from the rate of speech exercise incorporating different volumes of speech.</li>
</ol>

Note: You want to be heard but at the same time not be offensive to the audience. Vocal quality should be pleasant to the ears and free of harshness, breathiness, or vocal strain.
",
                      youtube_id: "",
                      assignment: false},
                      without_protection: true)

      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 5,
                      title: "Summary",
                      content: 
"Watch this video for more information about speaking clearly.",
                      youtube_id: "4JipHEz53sU",
                      assignment: false},
                      without_protection: true)

      Chapter.create({lesson_id: Lesson.find_by_number(1).id,
                      number: 6,
                      title: "Show What You've Learned and Get Feedback",
                      content: 
"After completing the lesson above, how do you feel you did?
<ul>
<li>Is your breathing and voice under control while you speak?</li>
<li>Can you adjust your pace more quickly or slowly?</li>
<li>Is your speaking volume appropriate for the audience?</li>
<li>Are you able to adjust your volume to emphasize different points?</li>
</ul>

When you are ready for feedback, upload your video!  To do so, first post your video on youtube.  Then, copy the link into the upload field on our website.  That's it!  Your video will then be available for the community to give you feedback and to help you improve your skills.
",
                      youtube_id: "",
                      assignment: true},
                      without_protection: true)
    
    end
  end

  def down
  end
end
