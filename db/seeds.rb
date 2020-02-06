require 'faker'

5.times do 
    User.create!(
        user_name: Faker::Internet.username,
        password: "hey",
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        bio: Faker::Quote.matz
    )
end


5.times do 
    Category.create!(
        name:Faker::Quote.robin,
    )
end

5.times do 
    Conversation.create!(
        sender_id:rand((User.all.first.id)..(User.all.last.id)),
        receiver_id:rand((User.all.first.id)..(User.all.last.id)),
    )
end




    Post.create!(
        title: "A military vet and his struggle…",
        body:  "'I didn’t tell anyone because I kept thinking: Do I have a right to feel this way? Am I taking up space that I don’t deserve? It took me a long time to get to a point where I realized I had a right to be heard, a right to speak my truth.'
        James Landrith is a survivor of sexual violence, former U.S. Marine, and long-time part of the RAINN team, including over 5,000 hours he has worked as a hotline support specialist and manager for the DoD Safe Helpline.
        When he was 19 and on his first active duty assignment, James was sexually assaulted by an acquaintance who was not in the military. Because the perpetrator was a woman, he did not feel that he would be believed or taken seriously if he told anyone. Soon after the assault, he was deployed to the Gulf War. He served six years, rose to the rank of Sergeant, and was recognized for his service with a Navy Achievement Medal and a Navy Commendation Medal.
        'I had to put it in a box and not think about it so I could keep going and fulfill my duties. I’m proud of my service. I had many good experiences along with some difficult ones. It has made me the person I am today.'
        For 17 years, James did not tell anyone about the assault and struggled with unhealthy coping mechanisms. Several loved ones shared their own experiences of sexual violence with him, but he didn’t feel that he could identify as a survivor himself. He eventually opened up to a coworker about what happened to him, and she validated that it was wrong. 'That’s when I finally decided to use the word. To call it what it was—rape. Even though I knew how it had hurt me, I had never given myself permission to label it as sexual violence. That’s why I never told anyone; as a man, I didn’t think I could be a survivor. I didn’t think I had the right to say it.'
        James started seeing a therapist, and also disclosed the abuse to his wife, who was supportive. For many years, James felt that he was to blame for what happened, and that he should have done something differently to prevent the assault. He has now come to a place in his healing where he no longer blames himself. 'I spent decades beating myself up over it. But I refuse to do that anymore.'
        Over a decade ago, James started speaking out and publicly sharing his story to help raise awareness so other male survivors would not feel isolated in the way he did. Since then, he has experienced extensive victim-shaming online—something many survivors face. For James, it hasn’t come in the form of questions about what he was wearing, as it does for many female survivors, but instead in the form of comments like, ‘You’re a man, how could you have let this happen to you?’'
        'If someone is unsupportive or victim blames you, remember; you can’t control their reactions. You can’t control whether they believe you or not. That’s on them. Once I stopped caring what other people thought, I was free.'
        Because of the abuse, James has experienced panic attacks, flashbacks, and difficulties in many relationships in his life. He has found taking walks, spending time outdoors, practicing breathing exercises, meditation, and music to be helpful in grounding himself in the present moment and calming down when he begins to feel like he is re-experiencing traumatic memories.
        As a survivor himself and after years as a hotline support specialist, James’ advice to other survivors who are considering disclosing about an assault is to first think about what kind of response you are hoping to receive, and then to prepare for what your self-care plan is if the disclosure doesn’t go well.
        'I’ve gotten to the point where I no longer care what someone thinks unless they’re going to be supportive. But I had to do a lot of work to get to that point. I focus my anger and my energy on helping other survivors.'
        James urges other survivors to do what is best for them in terms of reporting and interacting with law enforcement. 'What happened to me, I couldn’t control. But each choice going forward after that is yours to make.' He also emphasizes how crucial it is that all law enforcement officers receive specialized training in trauma-informed response services.
        Though James has dedicated his professional work to preventing sexual violence and supporting survivors, he emphasizes that there are many ways to get involved and help. The most important way to help is to be there for someone in your life who experienced sexual violence. In James’ experience, when most survivors reach out, the most important thing they need is for someone to just listen without judgement.
        'You don’t have to pretend it didn’t happen just because someone else doesn’t want to recognize it as legitimate. You know the truth of what happened to you.'",
        view_count:rand(23..60),
        user_id:rand((User.all.first.id)..(User.all.last.id)),
        # category_id: convo.id,
        category_id:rand((Category.all.first.id)..(Category.all.last.id)),
    )
    Post.create!(
        title: "Sandra's Story",
        body:  "'You are not alone. There are other people going through the same exact thing. I know it’s really hard to do, but talking about it helps.'
        Sandra Gonzalez is a proud mom, a member of the Latinx community, and a survivor of sexual violence. When Sandra was in high school, she was raped by her neighbor whom she had trusted and considered a family friend. During the assault she felt paralyzed and was unable to move, and felt that she was no longer in her body but was watching the assault happen to her.
        'It was like I was looking at myself from the outside. I had never experienced anything like that.'
        Sandra told a few close friends of hers that something had happened but didn’t share any details. She didn’t report the assault because she feared that no one would believe her, that she would be blamed, and that calling out the perpetrator would ruin the relationship between their families. Most of all, Sandra felt ashamed and embarrassed, and didn’t report because she didn’t want anyone to know what had happened to her. She was raised in a community that emphasized virginity before marriage, which caused Sandra to feel an additional layer of shame about what had happened to her.
        'It was really hard. There were days when I was OK and other days when I would be extremely depressed. I just bottled it all up. I would explode at people but they wouldn’t know why.'
        In the years after the assault, Sandra experienced depression, anxiety, suicidal thoughts, PTSD, and flashbacks. 'My story replayed in my mind over and over again. Sometimes I’d have flashbacks and it was like I was there in that room going through it all over again.'
        As a coping mechanism for what she was going through, Sandra started to do self-harming behaviors, such as cutting, practicing unsafe sex, and abuse of drugs and alcohol. 'I didn’t care about my body. I didn’t care about anything. One day I looked in the mirror and just started crying and I didn’t recognize who I had become. This wasn’t me at all.'
        Years later, when Sandra had her son, she felt that she had to get help not only for herself, but for his sake. 'For many years, I didn’t want to be here—I didn’t want to live. He changed my life. He is my reason for being here, and I’m so grateful for that.'
        Twenty years after the assault, Sandra started talking about what happened. 'I reconnected with my high school boyfriend and we started dating again. He asked me about what had happened, so I told him. It was the first time I ever shared the details of my story. It was like reliving it. But it opened the door to start my healing process.'
        Sandra’s boyfriend encouraged her to continue sharing her story. She started by writing down what happened in her own words. 'I first wrote it down a year ago. I was nervous and scared. But the more I talked about it the easier it got. I feel grateful and good about it. That’s why I’m comfortable sharing my story now.'
        Sandra still regrets that she didn’t report the sexual assault, though she understands why at the time she didn’t feel comfortable reporting and understands the reasons why other survivors may choose not to report. 'I didn’t say anything back then—I was quiet and scared. I wish I could say that I’d reported it. That’s my main reason for telling my story now.'
        Sandra practices self care often to help cope with anxiety, panic attacks, and depression. Journaling in particular has been helpful in her healing. 'I write in my journal about whatever’s bothering me that day and it usually makes me feel better. It releases a lot of tension.' She finds exercise, baths, and meditation to be relaxing and centering for her. She has also benefited from therapy. She says that keeping herself busy has been an important aspect of her healing process.
        She has also contacted chatted online with a staffer on RAINN’s National Sexual Assault Hotline countless times, which has helped her as an alternative behavior when she starts considering self-harm. 'I’d be lying in bed at two or three in the morning and I’d go on there. It was either that or doing something stupid to myself. It has helped me keep away from cutting so many times. Talking with whoever was on the other side of the computer saved me countless times. There are people out there who will truly listen.'
        Sandra doesn’t feel that her identity as a Latinx survivor has affected her healing process, though she does continue to grapple with what it means to be a bisexual survivor. She is grateful to her boyfriend for the love and support he has provided through her healing journey.
        Sandra’s advice to survivors is to trust themselves. 'Go with your gut feeling. I used to ignore my gut feeling but I trust it more now, I know that if it’s telling me there’s something wrong, it probably is.'
        'When I read another survivor’s story, I’m amazed by how strong they seem. When I recognize that I went through similar things they did, it makes me feel strong too. If my story can help one other person, it will be worth it.'",
        view_count:rand(23..60),
        user_id:rand((User.all.first.id)..(User.all.last.id)),
        # category_id: convo.id,
        category_id:rand((Category.all.first.id)..(Category.all.last.id)),
    )

    Post.create!(
        title: "Sydney’s Story",
        body:  " 'Give yourself the space to explore what happened to you. We think we will arrive at a destination of being healed, but it’s a journey. Knowing that I don’t need to be okay all the time is the biggest gift I could give myself.'
        Sydney Williams is a hiker, author, public speaker, leader, and survivor of sexual violence.
        After a decade of not telling anyone about her experience with sexual violence, Sydney disclosed to her husband. 'As funny as it sounds, we were watching The Bachelor and one of the contestants talked about something that had happened to her, and it was clear she had been silent about sexual violence for years. My husband paused the TV and said he couldn’t imagine having to be alone in that secret, and said that if something like that ever happened to me, he wanted me to know that he was there to listen and support me.' A few weeks later, Sydney told her husband about what had happened to her and as promised, he reacted in an extremely supportive way.
        'It was scary to tell him, because it made it feel more real. But it was also a huge weight lifted off my shoulders and the true start to my healing. If he hadn’t opened the conversation and made me feel that I could talk about it, my healing would have taken even longer to get started.'
        Sydney, like many survivors, didn’t feel she could tell her story because it didn’t fit into the stereotype around sexual violence. 'Because I knew the perpetrator, I didn’t think that I was allowed to count what happened as rape. After all, he wasn’t a stranger in a dark alley.' In fact, 8 out of 10 rapes are perpetrated by someone the victim knows.
        Sydney’s family reacted in an unsupportive way when she told them what happened. 'They said I was selfish. My father said my story was made-up. For a parent to react in this way was crushing.' Sydney says that if she had told him right after the assault and received that reaction, she doubts she would be alive today.
        'I didn’t tell my story because I didn’t feel safe to go to the police, the hospital, or my family. I had seen examples over and over again in the media of survivors telling their stories and not being believed, and I knew I couldn’t survive that.' Sydney says that the most accurate portrayal she’s seen of why so many survivors choose not to report was in the series Unbelievable, a Netflix limited series with which RAINN partnered.
        'There’s no guidebook on how to be a survivor, and each person’s story is different. It’s up to you whether reporting is the right choice.'
        'For so many years I felt the effects of sexual violence without knowing that that’s what they were. I did such a thorough job of silencing myself as a survivor, I convinced myself that I just wasn’t tough enough.' Sydney found herself using unhealthy coping mechanisms, such as overworking, excessive drinking, and overeating, which led her to develop Type II diabetes. 'For years I thought I had to change my body in order to feel comfortable in it, but now I know that I don’t have to wait for anything to start loving my body.'
        As Sydney reclaimed other parts of her life, she has rebuilt her confidence. 'I don’t feel ashamed and disgusted with myself anymore. This is just part of my story, and I want to be able to tell that story.'
        For years, Sydney has lived with panic attacks as a result of the assault. At first, she didn’t know what they were. Now that she understands what will usually cause them and the signs one might be starting, she has found ways to avoid them and ways to deal with them when they do occur.
        Sydney was a high-achieving student, on track to go to medical school. But the trauma of the assault distracted her from her studies. 'I blamed it on myself. There are so many dreams that go unrealized because in a state of trauma we think we can’t do it. We need to seriously consider the cost of sexual violence in terms of missed potential.'
        For the last eight months, Sydney and her husband have been traveling around the country as part of her speaking tour. In 2019, Sydney shared her story with 64 audiences at REI stores, universities, and business groups. She speaks to groups around the nation to share her story and educate people on how individuals and communities can work together to end sexual violence, and how survivors can find healing in the outdoors.
        'Of course, I wake up every day and choose to do this work, but it feels more like a calling—like something I have to do. When I was suffering in silence and isolation for a decade, hearing someone share their story would have changed my life for the better. Today, I choose to be that person for other survivors, the one who lets them know they aren’t alone. And every time I get to share my story with one survivor or a room of 100+, I heal a bit, too.'
        Sydney’s advice to other survivors is to not compare their trauma. 'In sharing our stories, the most important thing is not to compare our experiences. The worst things that happened to us might be different, but they’re still the worst things that we’ve been through. Even while hearing stories that are different from mine, I can still identify the language of what happened to me.'
        Hiking and spending time in nature have been important parts of Sydney’s healing — not only as healthy coping mechanisms, but symbolic in her healing journey. 'When I was finally alone with my thoughts and the sounds of the forest, my healing truly began. For survivors who feel like they’re just not getting anywhere, turn around and look at how far you’ve come. You survived it, you’re here.'
        Sydney shares her healing journey and more advice for survivors in her new book, Hiking My Feelings: Stepping Into the Healing Power of Nature. She will be going on a book tour in 2020 and is hosting nature-based retreats for survivors and those healing from trauma that will particularly focus on communities who haven’t felt safe or represented in the outdoors.
        'When I stand on mountains and feel the wind on my face, I can’t help but imagine that it carries my worries away with it. Being out in nature helps me remember my place in this world and allows me to focus on how much beauty there is to experience in life.'",
        view_count:rand(23..60),
        user_id:rand((User.all.first.id)..(User.all.last.id)),
        # category_id: convo.id,
        category_id:rand((Category.all.first.id)..(Category.all.last.id)),
    )
    Post.create!(
        title: "Silent Death and a Long Silence",
        body:  "BILL MINNIX WAS TOO ASHAMED to tell his family why he was kicked out of the Air Force in 1973, and they were too ashamed to ask. What would people at church say? What would the neighbors think?
        He didn’t speak a word to anyone about having been raped, he said — not for the next 40 years.
        He had enlisted at 17, and was a few weeks into radar technician school when a group of older enlisted men and officers took some new recruits to an off-base resort. In a private bungalow, after a round of drinking, Mr. Minnix said, the older men told the recruits it was time for their initiation.
        'At first there was laughing and nervous joking, and then there was silence,' Mr. Minnix said. 'I was scared to death. And we got forced into sex acts none of us wanted.' He said the teenagers were made to perform oral sex or were sodomized. 'What an awful thing, when you go back to the base the next day and you are facing these people,' he said.
        Mr. Minnix struggled to make sense of what had happened in the bungalow. Real men don’t get raped, he told himself, they fight back. He found he was unable to concentrate on his work, and started to do poorly in radar school. He was desperate to get out of the Air Force.
        'I couldn’t stand being there,' said Mr. Minnix, who lives in Bend, Ore. 'I didn’t feel I could report it to anyone. The best thing to do was run.'
        He sighed and added, 'I’ve essentially been running for most of my life since then.'
        Mr. Minnix deserted, was caught a week later, and then deserted again. The Air Force put him in jail and threatened to prosecute him if he didn’t agree to leave the service voluntarily with a less-than-honorable discharge. He took the discharge.
        Once he was out, he spent most of his adult life in what he calls 'a black box,' shut off from the world by anger and shame. He burned through jobs and two marriages, drinking to numb his own loathing.
        His parents never spoke to him again. They died not knowing the truth.",
        view_count:rand(23..60),
        user_id:rand((User.all.first.id)..(User.all.last.id)),
        # category_id: convo.id,
        category_id:rand((Category.all.first.id)..(Category.all.last.id)),
    )

    24.times do
        Post.create!(
            title: "A military vet and his struggle…",
            body:  "'I didn’t tell anyone because I kept thinking: Do I have a right to feel this way? Am I taking up space that I don’t deserve? It took me a long time to get to a point where I realized I had a right to be heard, a right to speak my truth.'
            James Landrith is a survivor of sexual violence, former U.S. Marine, and long-time part of the RAINN team, including over 5,000 hours he has worked as a hotline support specialist and manager for the DoD Safe Helpline.
            When he was 19 and on his first active duty assignment, James was sexually assaulted by an acquaintance who was not in the military. Because the perpetrator was a woman, he did not feel that he would be believed or taken seriously if he told anyone. Soon after the assault, he was deployed to the Gulf War. He served six years, rose to the rank of Sergeant, and was recognized for his service with a Navy Achievement Medal and a Navy Commendation Medal.
            'I had to put it in a box and not think about it so I could keep going and fulfill my duties. I’m proud of my service. I had many good experiences along with some difficult ones. It has made me the person I am today.'
            For 17 years, James did not tell anyone about the assault and struggled with unhealthy coping mechanisms. Several loved ones shared their own experiences of sexual violence with him, but he didn’t feel that he could identify as a survivor himself. He eventually opened up to a coworker about what happened to him, and she validated that it was wrong. 'That’s when I finally decided to use the word. To call it what it was—rape. Even though I knew how it had hurt me, I had never given myself permission to label it as sexual violence. That’s why I never told anyone; as a man, I didn’t think I could be a survivor. I didn’t think I had the right to say it.'
            James started seeing a therapist, and also disclosed the abuse to his wife, who was supportive. For many years, James felt that he was to blame for what happened, and that he should have done something differently to prevent the assault. He has now come to a place in his healing where he no longer blames himself. 'I spent decades beating myself up over it. But I refuse to do that anymore.'
            Over a decade ago, James started speaking out and publicly sharing his story to help raise awareness so other male survivors would not feel isolated in the way he did. Since then, he has experienced extensive victim-shaming online—something many survivors face. For James, it hasn’t come in the form of questions about what he was wearing, as it does for many female survivors, but instead in the form of comments like, ‘You’re a man, how could you have let this happen to you?’'
            'If someone is unsupportive or victim blames you, remember; you can’t control their reactions. You can’t control whether they believe you or not. That’s on them. Once I stopped caring what other people thought, I was free.'
            Because of the abuse, James has experienced panic attacks, flashbacks, and difficulties in many relationships in his life. He has found taking walks, spending time outdoors, practicing breathing exercises, meditation, and music to be helpful in grounding himself in the present moment and calming down when he begins to feel like he is re-experiencing traumatic memories.
            As a survivor himself and after years as a hotline support specialist, James’ advice to other survivors who are considering disclosing about an assault is to first think about what kind of response you are hoping to receive, and then to prepare for what your self-care plan is if the disclosure doesn’t go well.
            'I’ve gotten to the point where I no longer care what someone thinks unless they’re going to be supportive. But I had to do a lot of work to get to that point. I focus my anger and my energy on helping other survivors.'
            James urges other survivors to do what is best for them in terms of reporting and interacting with law enforcement. 'What happened to me, I couldn’t control. But each choice going forward after that is yours to make.' He also emphasizes how crucial it is that all law enforcement officers receive specialized training in trauma-informed response services.
            Though James has dedicated his professional work to preventing sexual violence and supporting survivors, he emphasizes that there are many ways to get involved and help. The most important way to help is to be there for someone in your life who experienced sexual violence. In James’ experience, when most survivors reach out, the most important thing they need is for someone to just listen without judgement.
            'You don’t have to pretend it didn’t happen just because someone else doesn’t want to recognize it as legitimate. You know the truth of what happened to you.'",
            view_count:rand(23..60),
            user_id:rand((User.all.first.id)..(User.all.last.id)),
            # category_id: convo.id,
            category_id:rand((Category.all.first.id)..(Category.all.last.id)),
        )
    end


5.times do 
    Comment.create!(
        body: Faker::Quote.singular_siegler,
        post_id:rand((Post.all.first.id)..(Post.all.last.id)),
        user_id:rand((User.all.first.id)..(User.all.last.id)),
    )
end



20.times do 
    
    Message.create!(
        body: Faker::Lorem.word,
        read: Faker::Boolean.boolean,
        conversation_id:rand((Conversation.all.first.id)..(Conversation.all.last.id)),
        user_id:rand((User.all.first.id)..(User.all.last.id)),
    )
end

10.times do 
    Follow.create!(
        follower_id: rand((User.all.first.id)..(User.all.last.id)),
        followed_user_id: rand((User.all.first.id)..(User.all.last.id))
    )
end