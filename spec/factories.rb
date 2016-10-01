FactoryGirl.define do
  factory(:position) do
    title('Science Teacher')
    term('Jan--Dec 2017')
  end
  
  factory(:user) do
    email('user@email.com')
    password "password"
    password_confirmation "password"
  end

  factory(:student) do
    name('Shedrack Japhet')
    age(16)
    bio("I want to go do school")
    dream("teacher")
    sponsored(false)
    image{ File.new("#{Rails.root}/public/images/shedrackjaphet.png")}
    gender("boy")
  end



  factory(:event) do
    name("Tea in the Garden")
    date("06/03/2017")
    time("7pm, PST")
    venu("Sauvie Island Farms")
    address("1234 Garden Street Portland, OR 97204")
    cost(30)
    details("Come join us for a light tea and lunch featuring fresh veggies from Sauvie Island Farms. All proceeds benefit Red Sweater Project.")
    image{ File.new("#{Rails.root}/public/images/event2.jpg")}
  end
end
