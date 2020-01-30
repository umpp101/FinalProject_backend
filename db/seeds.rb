require 'faker'

5.times do 
    User.create!(
        user_name: Faker::Internet.username,
        password: "hey",
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        age:rand(23..60),
        bio: Faker::Quote.matz,
        admin: Faker::Boolean.boolean,
        gender: ['Male', 'Female'].sample,
        city: Faker::Address.city,
        country: Faker::Address.country,
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

5.times do 
    # convo = Conversation.all.sample
    Post.create!(
        title: Faker::Quote.robin,
        body: Faker::Lorem.paragraphs(number: 1),
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