# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dream.destroy_all();
Sleep.destroy_all();
User.destroy_all();

andrew = User.create({
    username: 'seed_user',
    password: 'password'
});

# returns a string of the date of the input number of days before today
def generate_date_string (days) 
    date = Date.today - days;
    return "#{date.year}-#{date.month}-#{date.day}";
end

back1days = Sleep.create({
    user_id: andrew.id,
    start_day: generate_date_string(2),
    start_time: '23:30',
    end_day: generate_date_string(1),
    end_time: '06:00',
    note: "meh\ncould've used more",
    rating: 3
});

Dream.create({
    sleep_id: back1days.id,
    description: "woaaaa\ncrazy stufff..........\nheh.",
    mood: 3
});

back2days = Sleep.create({
    user_id: andrew.id,
    start_day: generate_date_string(3),
    start_time: '22:30',
    end_day: generate_date_string(2),
    end_time: '05:00',
    note: "not too much energy afterwards",
    rating: 2
});

Dream.create({
    sleep_id: back2days.id,
    description: "vague recollections of streets\nfloated around",
    mood: 0
});

back3days = Sleep.create({
    user_id: andrew.id,
    start_day: generate_date_string(4),
    start_time: '23:00',
    end_day: generate_date_string(3),
    end_time: '07:00',
    note: "fully rested-feels great",
    rating: 5
});

Dream.create({
    sleep_id: back3days.id,
    description: "saw wild things, had dream-fun",
    mood: 3
});

back4days = Sleep.create({
    user_id: andrew.id,
    start_day: generate_date_string(4),
    start_time: '00:30',
    end_day: generate_date_string(4),
    end_time: '05:00',
    note: "not even 5 hours, waking up to the alarm was awful",
    rating: 1
});

Dream.create({
    sleep_id: back4days.id,
    description: "played games while an abstract apparition of death loomed around\nvery symbolic",
    mood: -2
});

back5days = Sleep.create({
    user_id: andrew.id,
    start_day: generate_date_string(6),
    start_time: '22:45',
    end_day: generate_date_string(5),
    end_time: '4:30',
    note: "not enough again",
    rating: 2
});

Dream.create({
    sleep_id: back5days.id,
    description: "world flipped over and i fell infinitely from the ground into the sky",
    mood: -2
});

back6days = Sleep.create({
    user_id: andrew.id,
    start_day: generate_date_string(6),
    start_time: '01:30',
    end_day: generate_date_string(6),
    end_time: '05:00',
    note: "horrible\nduration is everything and this did not cut it",
    rating: 1
});

Dream.create({
    sleep_id: back6days.id,
    description: "walking around in empty, monochrome grey towns and skies\na feeling of intense solitude yet somewhat peaceful",
    mood: 0
});

back7days = Sleep.create({
    user_id: andrew.id,
    start_day: generate_date_string(8),
    start_time: '23:10',
    end_day: generate_date_string(7),
    end_time: '06:00',
    note: "not bad, esp. compared to recent sessions",
    rating: 4
});

Dream.create({
    sleep_id: back7days.id,
    description: "can't recall much at all",
    mood: 0
});

back8days = Sleep.create({
    user_id: andrew.id,
    start_day: generate_date_string(9),
    start_time: '23:55',
    end_day: generate_date_string(8),
    end_time: '06:00',
    note: "so-so, should be good enough for the day",
    rating: 3
});

Dream.create({
    sleep_id: back8days.id,
    description: "pretty uplifting\nthere was a crescendo and I wanted it to keep going when I woke up",
    mood: 3
});