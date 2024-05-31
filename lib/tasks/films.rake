# frozen_string_literal: true

namespace :films do
  desc "Seed films"
  task films: :environment do
    
    films_data = [
      {title: "Pretty Woman", slogan: "«She walked off the street, into his life and stole his heart»", link: "https://www.youtube.com/embed/kR6-FHgBVeY", release_date: "1990-03-23", duration: 119, description: "Vivien is the main character, she is left without a roof over her head and she is forced to live with her friend and engage in prostitution. But she has a dream that everything will change in her life someday. At this moment, businessman Edward Lewis is driving through a neighborhood with a dubious reputation and decides to stop near a beautiful girl who was standing on the side of the road. It turned out to be Vivien, who paid only in cash. In the morning, he realizes that he would not like to part with her and offers to continue staying with her for an additional fee. Edward needed a companion for an evening meeting with his client. He dresses her smartly, teaches her good manners and does everything to transform her. Vivien finds herself surrounded by luxury and brilliance, but also by the disdainful attitude of Edward, with whom, according to her dream, she had already fallen in love...", maturity_rating_id: 3},
      {title: "Titanic", slogan: "«Nothing on Earth can separate them»", link: "https://www.youtube.com/embed/F2RnxZnubCM", release_date: "1997-11-01", duration: 194, description: "On April 14, 1912, the largest steamship in the world, with more than two thousand people on board, set sail from a British port on its first and last voyage. Having won two tickets to the Titanic at cards, young artist Jack Dawson and his friend set off on the ship. The beautiful girl Rose is forced by her parents to marry an unloved but very wealthy gentleman, because this marriage will help improve the difficult financial situation of the family. In desperation, Rose decides to commit suicide and tries to jump from the top deck of the ship directly into the open ocean. However, she is saved by Jack Dawson, who was there at the time. Very strong feelings flare up between them, which they will never be able to fully enjoy.", maturity_rating_id: 3},
      {title: "Avatar", slogan: "«It's a new world»", link: "https://www.youtube.com/embed/tdBdkxwQY-Q", release_date: "2009-12-10", duration: 162, description: "The film takes place in the future, on the very distant and amazing planet Pandora, where the large corporation RDA is mining the very expensive mineral unobtanium. The planet is also home to a local population of Na’vi humanoids, who greatly respect the surrounding nature. True, the local aborigines greatly interfere with the extraction of the mineral, and on top of everything else, their settlement is located on the largest deposits of unobtanium. In order to find a common language with the Na'vi, the corporation sponsors a program to develop avatars - artificially created humanoid bodies controlled by people based on whose DNA they were created. These people are called operators. Control occurs by transferring a person’s consciousness into the avatar’s body. One of these operators is Marine Jake Sully, who became disabled as a result of injury. In fact, he simply became a replacement for the genius’s deceased brother, because their DNA is the same. Going to Pandora, Jack could not even imagine what an important mission lay ahead of him.", maturity_rating_id: 3},
      {title: "Don't Look Up", slogan: "«Don't Look Up»", link: "https://www.youtube.com/embed/RbIxYm3mKzI", release_date: "2021-12-08", duration: 143, description: "Teacher Randall Mindy, along with a young astronomy graduate student Kate Dibiaschi, are horrified to discover that a large comet is heading towards Earth, which will destroy all of humanity upon impact. They are in a hurry to the White House for a reception with the President of the United States, but no one takes their words seriously, ignoring the impending disaster. Forced to draw public attention to the problem on their own, the main characters urgently go on a media tour across the country, encountering disdain and mistrust.", maturity_rating_id: 5},
      {title: "The Devil Wears Prada", slogan: "«This season the devil will come in heels...»", link: "https://www.youtube.com/embed/6ZOZwUQKu3E", release_date: "2006-06-19", duration: 109, description: "Andy Sachs, a recent journalism graduate, doesn't know much about fashion. Despite this, she manages to get a job as the second assistant to the editor-in-chief of a trendy magazine, Miranda Priestly, a powerful and demanding woman who is considered one of the most influential figures in the fashion industry. However, fitting into the new team turns out to be a difficult task - Andy is completely different from her glamorous colleagues, and the formidable Miranda is too cruel to her. So she decides to change to fit in with her new surroundings.", maturity_rating_id: 4},
      {title: "Mr. & Mrs. Smith", slogan: "«Happy endings are for stories that haven't finished yet»", link: "https://www.youtube.com/embed/CZ0B22z22pI", release_date: "2005-06-07", duration: 120, description: "A young married couple, John and Jane Smith, who have not been married for too long, are already quite tired of their relationship and it seems to them that they know almost everything about their “other half”. But there is something carefully hidden by each of them - they are both professional assassins. Being under constant cover, they cope with the most dangerous missions around the world, flawlessly carrying out their deadly work. But one day something completely unexpected happens, since Jane suddenly becomes John’s next target, and Jane herself receives an “order” for John.", maturity_rating_id: 4},
      {title: "Lara Croft - Tomb Raider", slogan: "«The Biggest Adventure Begins 2001»", link: "https://www.youtube.com/embed/-0enc2VSiKE", release_date: "2001-06-11", duration: 100, description: "The film will tell you the story of the exciting adventures of the inexorably graceful and mysterious Lara Croft, masterfully wielding all fighting styles and types of weapons, from a knife to a pair of pistols. Trying to solve the mystery of the disappearance of her father and her past, the girl learns a secret that radically changes her whole life. Embarking on a journey threatening with mortal dangers and traps in order to find answers to all her questions, the charming heroine will have to show all her ingenuity and erudition, physical strength and dexterity in order to solve the mysterious riddle of the millennium, punish the bandits who covet the treasure, and survive and most importantly, save the world. This film is based on a series of popular computer games and was awarded for the best fights and the best actress, which once again proves that the movie is full of epic action and excellent acting, full of charm and wit, which will not let the viewer get bored for a minute and will touch you to the very depths of your soul. Enjoy a truly spectacular adventure and solve many puzzles with the brave, reckless main character.", maturity_rating_id: 3},
      {title: "Lara Croft Tomb Raider – The Cradle of Life", slogan: "«This is a new work about Lara's travels»", link: "https://www.youtube.com/embed/FMDQ5QfxPoY", release_date: "2003-07-21", duration: 117, description: "This is a new work about Lara's travels. This part covers an even larger part of the globe, the landscapes have become even more beautiful and exotic. The main plot of the film revolves around a mysterious artifact, which is located in the Temple of the Moon, hidden under the water before the events of the film and appeared on the island due to a strong earthquake. However, her enemy, Chen Lo, the leader of the Chinese criminal group, manages to steal the artifact before Lara and puts her life in danger, from which she barely managed to escape. Later, Lara receives a task from MI6 to save a certain Pandora's Box, which contains a plague and can destroy the entire world. However, the key to it is the same artifact stolen by Chen Luo, a mysterious golden hemisphere. Now Lara Croft’s task is not only to take what she wants from her enemy, but also to find Pandora’s Box and save the whole world, because Chen Lo, in turn, wants to use it as a weapon for the coming Judgment Day.", maturity_rating_id: 3},
      {title: "James Bond 007-Spectre", slogan: "«The dead are alive»", link: "https://www.youtube.com/embed/7GqClqvlObY", release_date: "2015-10-26", duration: 148, description: "James Bond receives a mysterious message and travels to Rome, where he meets Lucia, the beautiful widow of a dangerous criminal. A secret agent manages to get into a secret meeting of a global organization code-named SPECTER. Bond will have to investigate the activities of this crime syndicate, and in the process, uncover a terrible secret that unites him with the enemy. Meanwhile, in London, the new head of the National Security Center begins to doubt British intelligence and decides to eliminate it, while Agent M fights to save it...", maturity_rating_id: 4},
      {title: "Jurassic Park", slogan: "«The most phenomenal discovery of our time... becomes the greatest adventure of all time»", link: "https://www.youtube.com/embed/QWBKEmWWL38", release_date: "1993-06-09", duration: 127, description: "The film takes place on an island located somewhere near the coast of Costa Rica. Its owner, Professor John Hammond, who owns a large corporation InGen, one day persuades several famous paleontologists - Alan Grant and Ellie Sattler - to visit the island. He is simply sure that what they see will simply shock them. And Hammond did not deceive. Upon arrival, experienced scientists witness how dozens of different species of dinosaurs, extinct hundreds of millions of years ago, walk around the island. As it turns out, this became possible thanks to the fact that scientists were able to extract the DNA of ancient reptiles from mosquitoes found in amber deposits. But is it worth joking with nature and trying to do something that only God can do?", maturity_rating_id: 4},
      {title: "Terminator", slogan: "«Your future is in his hands»", link: "https://www.youtube.com/embed/k64P4l2Wmeg", release_date: "1984-10-26", duration: 108, description: "In the near future, an artificial intelligence called Skynet managed to get out of control and rebel against humanity, resulting in the almost complete destruction of people. However, the survivors do not want to put up with what is happening, and therefore are trying in every possible way to resist the army of machines. The leader of the resistance is a guy named John Conor, who gave people hope of victory. One day, in order to radically change the course of events, Skynet sends a robot into the past, whose main task is to eliminate Sarah Connor, the mother of the rebel leader. Having learned about this, people also send a guy named Kyle Reese into the past, who will have to do everything possible to protect Sarah...", maturity_rating_id: 4},
      {title: "Beauty and the Beast", slogan: "«You are our guest»", link: "https://www.youtube.com/embed/e3Nl_TCQXuw", release_date: "2017-02-23", duration: 129, description: "The angry Sorceress, having decided to cruelly teach the selfish, narcissistic and heartless Prince Adam a lesson, turns the handsome young man into a terrible monster, casting a powerful spell on the inhabitants of the castle who fell under the hot hand, turning the unfortunates into various interior items. And now, in order to remove the terrible spell, the arrogant young man must not only learn good manners, but also meet true mutual love. But our hero needs to do all this before the last petal falls from the magic rose left by the sorceress, otherwise the guy will remain in the guise of a monster for the rest of his life. The charming beauty Belle lives with her father Maurice, an eccentric inventor, in a small provincial town. One day, going to a fair to demonstrate his next invention, Maurice loses his way and accidentally ends up in a cursed castle, where he falls into the clutches of a monster. Worried by the absence of her father, Belle goes in search of him and soon finds herself in an enchanted castle, where the girl offers the gloomy owner to become his prisoner in exchange for her father's freedom...", maturity_rating_id: 4},
      {title: "Harry Potter and the Philosopher's Stone", slogan: "«Journey to Your Dream»", link: "https://www.youtube.com/embed/mNgwNXKBEW0", release_date: "2001-11-04", duration: 153, description: "The film is an adaptation of the novel of the same name by the famous British writer J. K. Rowling. After Harry's parents died, his uncle and aunt are raising him. On his eleventh birthday, he learns that he is a real wizard, and he is invited to study at Hogwarts School of Magic. It was there, from one of the teachers, that Harry learns the true truth about his past, and that his parents were actually killed by Lord Voldemort, the most powerful dark magician who has ever existed. Having entered an unusual school, the hero plunges headlong into the world of magic and sorcery, without even imagining what trials await him ahead.", maturity_rating_id: 3},
      {title: "Charlie and the Chocolate Factory", slogan: "«Get ready for a chocolatey taste of adventure»", link: "https://www.youtube.com/embed/OFVGCUIXJls", release_date: "2005-07-10", duration: 115, description: "Probably everyone in childhood dreamed of visiting a chocolate factory and eating plenty of sweets. This particular factory, which produces some of the most delicious chocolate in the world, is owned by a quirky and reclusive man named Willy Wonka. After competitors managed to steal the secrets of chocolate production, no one enters the factory anymore. But one day Willie, having hidden five tickets in chocolates, announces that the children who find them will be able to visit his factory, and one of them will receive a valuable prize. One of these lucky ones is the boy Charlie, who grew up in a poor family. This fascinating tour of the chocolate factory will forever change the life of Charlie, and Willy Wonka himself.", maturity_rating_id: 2},
      {title: "Hachi - A Dog's Tale", slogan: "«A true story of faith, devotion and eternal love»", link: "https://www.youtube.com/embed/LSWbsh-fmwc", release_date: "2009-06-13", duration: 89, description: "One day, once again going to the station to get to work, university professor Parker Wilson finds a small puppy there. He decides to keep the dog and names him Hachiko, and soon a very strong friendship arises between the owner and the pet. Every day the animal sees off and meets its owner from work. But one day, during another lecture, the professor has a heart attack, and Hachiko never waits for her beloved owner. For the rest of his short dog life, the faithful dog comes to the station every day with the hope that his owner will soon return.", maturity_rating_id: 1}
    ]

    Film.create(films_data)

    puts "Films inserted successfully!"
  end
end

