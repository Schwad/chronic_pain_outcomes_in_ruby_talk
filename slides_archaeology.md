name: primary-slide

---
class: left

# Ruby Archaeology
.left[![ruby](https://rebornix.gallerycdn.vsassets.io/extensions/rebornix/ruby/0.17.0/1520198344144/Microsoft.VisualStudio.Services.Icons.Default)]
---
class: left

# Thank you ❤️
---
template: primary-slide

# Order of the day:

--

### * What is Ruby Archaeology?

--

### * Introduce today's specimen

--

### * Get digging! 👷⛏

---
template: primary-slide
class: center, middle

#Who am I?

---
template: primary-slide
class: top, right
background-image: url(https://i.imgur.com/VDbyqsS.jpg)
background-size: cover
## .white[.strong[I used to live here]]

---
template: primary-slide
background-image: url(https://i.imgur.com/XEMQDAz.jpg)
background-size: cover
class: bottom, left
# .white[.strong[Now I live here](https://www.savills.ie/_images/belfast.jpg)]

---
template: primary-slide

# And I work here

.center[![This is my image](https://1000logos.net/wp-content/uploads/2020/08/Shopify-Logo.png)]

---
template: primary-slide
class: center, middle
# And we are hiring!
# https://www.shopify.com/careers/2021
### (or DM me after)
---
template: primary-slide
class: center, middle
# Today's talk has nothing to do about where I work.

--
.center[![:scale 40%](https://i.imgur.com/nEKCRhY.jpg =20%)]

---
template: primary-slide
class: center, middle
# What is Ruby Archaelogy?
---
template: primary-slide
class: center, middle
# PastRubies
.center[![my images](https://i.imgur.com/OTExNie.png)]
---
template: primary-slide
class: center, middle
# Looking to the past
.center[![my images(https://i.imgur.com/oiZYanU.png)]]
--
.center[![:scale 40%](https://i.imgur.com/Vuq9Aia.png)]

#####comment#####

Why was the symbol of all that is whimsical and right with programming. The
whimsy that is core to ruby; the care about the building and the art. He represented
a time where you could give major conference talks without sharing your job title,
real name or location.
---
template: primary-slide
class: center, middle
.center[![poignant guide](https://i.imgur.com/C1AUAAR.png)]
---
template: primary-slide
class: center, middle
.center[![blogs](https://i.imgur.com/6F8WjiY.png)]
---
template: primary-slide
class: center, middle
.center[![disappears](https://i.imgur.com/7vRcQnT.png)]
---
template: primary-slide
class: center, middle
.center[![whys estate](https://i.imgur.com/Eo6tZ5Z.png)]
---
template: primary-slide
class: center, middle
# Let's go back in time

---
#
---
template: primary-slide
class: center, middle
# <<< GEM 1 >>> #TODO

# we aren't met to use the old stuff, but I want it

-- lets get ruby 1.8.7
-- can't do it with chruby, maybe with rvm
-- ruby-build doesn't have it either
-- greatest hurdle, getting an old ruby!
-- major complaints on 1.8.7 with RVM; however they said that might be possible in a vm or containerized linux. no thanks!
-- attempted rbenv
-- rvm just full of bugs

(rbenv worked out of the box for 1.9.3 (screenshot))
downgrade rubygems to 1.3.5
sudo gem update --system 1.3.5
rvm pkg install zlib

Rubygems 1.8.2 (circa 2011), download, cd into zip and `ruby setup.rb` (screenshot1)

# Might ask for libyaml

`rvm pkg install libyaml`

# Getting your ruby rocking with the right openssl

brew install rbenv/tap/openssl@1.0

PKG_CONFIG_PATH=/usr/local/Cellar/openssl@1.0/1.0.2t/lib/pkgconfig rvm reinstall 1.9.3-p551 --with-openssl-dir=/usr/local/Cellar/openssl@1.0/1.0.2t --with-openssl-lib=/usr/local/Cellar/openssl@1.0/1.0.2t/lib --with-openssl-include=/usr/local/Cellar/openssl@1.0/1.0.2t/include --rubygems ignore

# New error

`Error running '__rvm_make -j16',`

# Kill your rubies, use libyaml from homebrew
(screenshot3)

# Get ubuntu 10.04 (2011)
vagrant init bento/ubuntu-10.04
vagrant up
vagrant ssh

*we are in the machine*  

# Apt-get udpate will *not* work out of the box

* this is a blocker to getting ruby, installing rbenv, etc.

# Replace sources.list with new repos which make it work
cd etc/apt
sed -i -e 's#http://us.archive.ubuntu.com#http://old-releases.ubuntu.com#g' sources.list
nano sources.list
sed -i -e 's#http://security.ubuntu.com#http://old-releases.ubuntu.com#g' sources.list

# You won't have "apt install", do old way of "apt-get"

# debugging ruby in the past

When we're over a decade ago, you absolutely cannot rely on anything to be reliable. You don't want any new packaging. Even google will let you down, search like this:

`before:2012-01-01 install ruby on ubuntu` <<screenshot>>

`rubygems -> 1.3.5`
`ruby -> 1.8.7`

# rubygems taking forever. can I get git and clone it down, build and run the gem locally? maybe the best

# Let's get git

sudo apt-get install git-core

# git clone does not work

```
/usr/custom_gems/hpricot/.git/
error: gnutls_handshake() failed: A TLS fatal alert has been received. while accessing https://github.com/hpricot/hpricot/info/refs
```

# more hacking around as the connection is erroring out:
<screenshot>
https://confluence.atlassian.com/bitbucketserverkb/error-gnutls_handshake-failed-a-tls-warning-alert-has-been-received-779171747.html

# git seems to be too old to talk to github 1.7.... new ways to bring files down.

# old curl?

gist screenshot with old curl and wget
`sudo wget --no-check-certificate --content-disposition http://rubygems.org/downloads/hpricot-0.8.1.gem

sudo wget --no-check-certificate --content-disposition http://rubygems.org/downloads/builder-2.0.0.gem

walk through the old code, run the code, get the screenshots, pull this into getting 'old' ruby running



# use ruby-dev

sudo apt-get install ruby-dev




rbenv, instead of rvm

-- TIME TO FIND AN OLD UBUNTU (screenshot)
---
template: primary-slide
class: center, middle
# <<< GEM 1 >>> #TODO
---
template: primary-slide
class: center, middle
# <<< GEM 1 >>> #TODO
---
template: primary-slide
class: center, middle
# <<< GEM 2 >>>#TODO
---
template: primary-slide
class: center, middle
# <<< GEM 3 >>>#TODO
---
template: primary-slide
class: center, middle
# Moral slide
---
template: primary-slide

# Wrapup:

###1. Lay out a non-business 'problem' through a story
###2. Discuss attacking that problem with the help of 'Ruby' 🍖
###3. Cover outcomes and retrospective observations
###4. Underline the importance of using your Ruby 'superpower' ❤️

---
template: primary-slide

# Thanks for your time!
### @schwad4hd14 (twitter)
### @schwadererer (insta)
### github.com/schwad
### nicholas.schwaderer@gmail.com
### Let's connect
---



# End of nick's presentation


---
class: left

# Measuring Chronic Pain Outcomes with Ruby and Twilio
.left[![ruby](https://rebornix.gallerycdn.vsassets.io/extensions/rebornix/ruby/0.17.0/1520198344144/Microsoft.VisualStudio.Services.Icons.Default)]
---
template: primary-slide

# Order of the day:

--

###1. Lay out a non-business 'problem' through a story

--

###2. Discuss attacking that problem with the help of Ruby .big[🍖]

--

###3. Cover outcomes and retrospective observations

--

###4. Underline the importance of using your Ruby <u>.strong['superpower']</u> .big[❤️]

---
template: primary-slide
class: center, middle

#Who am I?

---
template: primary-slide
class: top, right
background-image: url(https://i.imgur.com/VDbyqsS.jpg)
background-size: cover
## .white[.strong[I used to live here]]

---
template: primary-slide
background-image: url(https://i.imgur.com/XEMQDAz.jpg)
background-size: cover
class: bottom, left
# .white[.strong[Now I live here]]

---
template: primary-slide

# And I work here

.center[![This is my image](https://pbs.twimg.com/profile_images/1122058292/ohq_avatar_400x400.jpg)]

---
template: primary-slide

background-image: url(http://plenglish.com/images/2017/diciembre/17/barcos.jpg)
background-size: cover

---
template: primary-slide
class: center, middle
# Today's talk has nothing to do about where I work.

--
.center[![:scale 40%](https://i.imgur.com/nEKCRhY.jpg =20%)]

---
template: primary-slide
class: center, middle
# .strong[1]
# The problem

---
template: primary-slide
class: center, middle
# Summer 2017

---

class: center, middle
.biggester[🤕 🚑]

---
template: primary-slide
class: center

.center[# What is Avascular Necrosis?]

.center[![This is my image](https://i2.wp.com/shoulderelbow.org/wp-content/uploads/2016/09/avascular-necrosis-happens.jpg?resize=748%2C561&ssl=1)]

---
template: primary-slide
class: center, middle
.biggester[❗️]

???

Dr. Said that the pressure swings will affect joint pain.

---
template: primary-slide

class: center, top
.biggester[❓]

.biggester[🤔]

???

My hypothesis

--
## Pain: nearly unpredictable
--

## Pressure systems: <u>.strong[very]</u> predictable
---
template: primary-slide
class: center, middle
# Negotiation time
![:scale 90%](https://ak3.picdn.net/shutterstock/videos/3780503/thumb/1.jpg?i10c=img.resize(height:160))

???

Striking a deal with laura. It's all about compromise.

---
template: primary-slide

# She would help me track and measure her pain 📈 ✔️

--

# I would start counting my caloric intake every day 😱 🍪

---
template: primary-slide
class: center, middle
# .strong[2]
# Solving this problem, with the aid of Ruby & Twilio

---

# .center[Goal]
--

* ### Identify as many pain readings as possible
--

* ### Marry pain reading to barometrict pressure
--

* ### Process readings for assessment & forecasting

---
template: primary-slide
class: middle, center
# Set Up
---
template: primary-slide
class: center, top
# .center[A Web UI for this application was out of scope. .biggest[🚫]]
--

<br>
# Solution: Twilio & SMS
![:scale 50%](https://www.twilio.com/marketing/bundles/company-brand/img/logos/red/twilio-logo-red.png)

---
template: primary-slide

# One smooth ride
```ruby
# Taken directly from twilio documentation
require 'twilio-ruby'

account_sid = "ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" # Acct. SID
auth_token = "your_auth_token"   # Auth token

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.messages.create(
    body: "Hello from Ruby",
    to: "+12345678901",    # Replace with your phone number
    from: "+12345678901")  # Replace with your Twilio number

puts message.sid
```

???

I am not a twilio expert.

That's the point.

Setup was slick and painless.

Slightly more involved process for Rails integrations but nothing you
couldn't hack in a half hour and simply forget about.

---
template: primary-slide
class: center
# Weather Underground

.center[![wu-logo](https://i.imgur.com/u1T8vO4.png)]

???

25,000 independent weather stations data since the 90s, great interface

---
template: primary-slide
## sdague/weather-underground.rb

.center[![:scale 100%](https://i.imgur.com/LiN8KWL.png)]

???

Gem is simple, straightforward, already a ruby path for this

---
template: primary-slide

# Barometric pressure measurement:
--

* ###SI: 101kPa (1 pascal = 1 newton per square metre, 1 N/m2)
--

* ###USA: 15psi
--

* ###Inches of Mercury: 29.53"
--

* ###Millibars: 1013.25 mbar 🤔
--

* ###Atm: 1

???

articulate a bit more between 'metric' and si approved

---
template: primary-slide

# Simple object

```ruby
#<DataPoint:0x00000005e89a18> {
                   :id => 115,
  :barometric_pressure => 1014.56146291907,
           :pain_level => 4.0,
           :created_at => Sun, 17 Sep 2017 10:26:31 UTC +00:00,
           :updated_at => Sun, 17 Sep 2017 10:26:31 UTC +00:00
}
```

---
template: primary-slide

# Simple object

```ruby
#<DataPoint:0x00000005e89a18> {
                   :id => 115,
  :barometric_pressure => 1014.56146291907, # <---What I care
           :pain_level => 4.0,              # <---about
           :created_at => Sun, 17 Sep 2017 10:26:31 UTC +00:00,
           :updated_at => Sun, 17 Sep 2017 10:26:31 UTC +00:00
}
```

---
template: primary-slide
class: center, middle

# Difficulty level: .strong[Hard]

???

Most tricky part isn't the modeling or integrations but interacting with the user

---
template: primary-slide

# The core flow:

--

* ###Random messaging 5x/day ✉️
--

* ###Capture pain reading 📈
--

* ###Marry reading to live barometric pressure 🌪
--

* ###Handle as many edge cases as possible 😰

???

Explain the randomness of the flow with a rake task here and why it's important.

---
template: primary-slide

class: center
# Unexpected user inputs
--
.left[# 'F OFF']
---
template: primary-slide
class: top
# .center[Unexpected user inputs]

# .left[#'F OFF'.to_i == 0]
--

```ruby
if angry_response
  "Huh. Okay. I don't think #{pain_level} is quite right..."
end
```
--
# .left[66]

--
.left[##Inline adjustments, and data post-processing]

???

Some things were dealt with with inline realtime improvements and some with data sanitizing at the end.

---
template: primary-slide

class: center, middle
# Encourage user input

---
template: primary-slide
class: center, top
## Ensure that the response was sensitive to the situation

--

# Giphy integration

.center[![:scale 68%](https://i.imgur.com/RYwKQOI.gif)]
---
template: primary-slide

## Hook up response
```ruby
type = ['funny', 'cat', 'dancing'].sample
gif = RestClient.get("#{giphy_path_builder}#{type}#{settings}")
selector = (0..23).to_a.sample
"Saved! #{JSON.parse(gif)['data'][selector]['bitly_gif_url']}"
```
--
## Result:
### Saved!
![:scale 31%](https://i.imgur.com/CsTZTFL.gif)

---
template: primary-slide

## Ensure that the response was sensitive to the situation
--


```ruby
if pain_level.to_f >= 7.0
  painful_message
  # Note: Gifs were *never* appropriate on high-pain days.
elsif pain_level.to_f < 4.0
  [less_pain_message, gif_message].sample
else
  [middle_pain_message, gif_message].sample
end
```

---
template: primary-slide
# Light hearted on the easier days

```ruby
def less_pain_message
  [
    'Successfully saved. Thanks for putting up with this app, it means a lot to nick',
    'Data has been logged. Wow, we are gonna have a good chunk of data points!',
    'Saved. You probably think this is all a bunch of random messages nick entered. NOPE! I\'m real! I live inside your phone! help!',
    'Saved! Hope that your pain levels stay low bee bop!',
    'Saved- fingers crossed your numbers stay good',
    'Boom! Loving those low numbers. Hope it stays low!',
    'Got it saved. Wonder if the pressure is working in your favor?'
  ].sample
end
```
---

template: primary-slide

# Support on the rough days

```ruby
def painful_message
  ['This saved, but honey are you okay? Tell nick you just wanna chill tonight.',
    'I have got this in the system. Sorry you are hurting :(',
    'Saved successfully. I hope you are not fed up with this app, just know that the information you provide could be really, really helpful.',
    'Logged! Fingers crossed that these numbers will go down after the surgery...',
    'Saved. Thank you for being so good about sending this data in...',
    'Got it. Be sure to take it easy and not push yourself if you are sore!',
    'You should take a night off on the couch and make nick cook and clean and get you lots of tea. Modern Family night?'
  ].sample
end
```
---
template: primary-slide
class: center, middle
# .strong[3]
# Outcomes and Retrospectives
---
template: primary-slide
class: top
#.center[How we view pain]

###.left[Pain is incredibly subjective]
###.left[Hospital tried to make it objective]
###.left[Laura had become *very* good at monitoring pain to her standard]
###.left[< 5? no relief for you!]
###.left[Adjustment for the race to the top]

---
template: primary-slide

class: center, top
# Making things mobile
--

### .left[Manual coordinate resets]
--

### .left[Benefit from location data, maybe]

---
template: primary-slide
class: center, middle
# How do we best process this information?

---
template: primary-slide

# Dump information into a two dimensional array

```ruby
def valid_readings(pain_level)
  pain_level > 0.0 && pain_level < 10.0
end

array = []
DataPoint.all.each do |dp|
  if valid_readings(dp.pain_level)
    array << [dp.barometric_pressure, dp.pain_level]
  end
end
```
---
template: primary-slide

# Write to CSV

```ruby
require 'csv'
CSV.open("laura_stats.csv", "w") do |csv|
  array.map{|row| csv << row}
end
```

???

Possible chopping block if tight
---
template: primary-slide
class: center, top
# Visualize with a Graph

.center[![:scale 80%](https://i.imgur.com/dm7Sp4M.png)]

---
template: primary-slide

# SVM in Ruby

.center[![:scale 100%](https://i.imgur.com/IB1YGUE.png)]

???

Support Vector Machine (SVM) is a supervised learning algorithm

Take in a set of training data of varying types, makes predictions with a set
of methodologies that someone could probably do a 45 minute talk on themselves.

Shout out to practicalai.com. With posts under a year old that focus on
various different real implmentations of ruby against real data using
different AI techniques

---
template: primary-slide

# Giving props 👏

### (`daugaard/example-svm`)

![:scale 90%](https://i.imgur.com/UVskqfI.png)

???

Discuss finding blog post on ruby weekly,

WHY DOES THIS ONLY HAVE THREE STARS!?

---
template: primary-slide

# Finding the 'best' C and Gamma values

#![:scale 100%](https://i.imgur.com/L3OKGwB.png)

???

C: a larger C will give you lower bias and higher variance a model will have, where a low C will give you high bias and low variance.

Gamma: defines how far a single training example will have influence
---
template: primary-slide

# Best results I could garner:
<br>
### .center[ Test Generalization Accuracy: .strong[24.43%]]
### .center[ C=5, gamma=1]

---
template: primary-slide

# What if I cared more about 'close' than 'exact?'
```ruby
correct = predicted.collect.with_index do |e,i|
  if (e.to_f - validation_y_data[i].to_f).magnitude <= 1.0
    1
  else
    0
  end
end.inject{ |sum,e| sum+e }
```
---
template: primary-slide
# Within 1:
--

### Test Generalization Accuracy: <u>.strong[60.34%]</u>

--

# Within 2:

--

### Test Generalization Accuracy: <u>.strong[89.66%]</u>

---
template: primary-slide
# One more takeaway

.center[![:scale 90%](https://i.imgur.com/dm7Sp4M.png)]

???

Nothing under 4 over certain pressure

---
template: primary-slide

# Other thoughts on the future:

--

### Measure 'closeness'

### Increase dataset size

### Publish dataset for analysis from fellow Rubyists

### WIP: Forecasting

???

Also did a logistic regression approach which I will be publishing along with the slides

---
template: primary-slide
class: center, middle
# .strong[4]
# Using our superpower, for good

---
template: primary-slide
class: center, top
### It's not a choice between 'working for the man' and 'toy projects'
--

### Not everyone can do what you do
--

### What is a few minutes of mindless scripting for you may be life changing for someone else
--

### New tooling opportunities and experience

---
template: primary-slide

# Wrapup:

###1. Lay out a non-business 'problem' through a story
###2. Discuss attacking that problem with the help of 'Ruby' 🍖
###3. Cover outcomes and retrospective observations
###4. Underline the importance of using your Ruby 'superpower' ❤️

---
template: primary-slide

# Thanks for your time!
### schwad.github.io (slides will be published here)
### @schwad4hd14 (twitter)
### @schwadererer (insta)
### github.com/schwad
### nicholas.schwaderer@gmail.com
### Let's connect
---
