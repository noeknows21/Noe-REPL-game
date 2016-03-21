puts """
 $$$$$$$$\\  $$$$$$\\  $$\\    $$\\ $$$$$$$$\\ $$$$$$$\\  $$\\   $$\\
\\__$$  __|$$  __$$\\ $$ |   $$ |$$  _____|$$  __$$\\ $$$\\  $$ |
   $$ |   $$ /  $$ |$$ |   $$ |$$ |      $$ |  $$ |$$$$\\ $$ |
   $$ |   $$$$$$$$ |\\$$\\  $$  |$$$$$\\    $$$$$$$  |$$ $$\\$$ |
   $$ |   $$  __$$ | \\$$\\$$  / $$  __|   $$  __$$< $$ \\$$$$ |
   $$ |   $$ |  $$ |  \\$$$  /  $$ |      $$ |  $$ |$$ |\\$$$ |
   $$ |   $$ |  $$ |   \\$  /   $$$$$$$$\\ $$ |  $$ |$$ | \\$$ |
   \\__|   \\__|  \\__|    \\_/    \\________|\\__|  \\__|\\__|  \\__|
        $$$$$$\\  $$$$$$$\\   $$$$$$\\  $$\\      $$\\ $$\\
       $$  __$$\\ $$  __$$\\ $$  __$$\\ $$ | $\\  $$ |$$ |
       $$ /  \\__|$$ |  $$ |$$ /  $$ |$$ |$$$\\ $$ |$$ |
       $$ |      $$$$$$$  |$$$$$$$$ |$$ $$ $$\\$$ |$$ |
       $$ |      $$  __$$< $$  __$$ |$$$$  _$$$$ |$$ |
       $$ |  $$\\ $$ |  $$ |$$ |  $$ |$$$  / \\$$$ |$$ |
       \\$$$$$$  |$$ |  $$ |$$ |  $$ |$$  /   \\$$ |$$$$$$$$\\
        \\______/ \\__|  \\__|\\__|  \\__|\\__/     \\__|\\________|
                                                                          """

puts "Loading..."
sleep(1.5)
def loading_bars(bar)
  puts bar
  sleep(0.5)
end
loading_bars("███▒▒▒▒▒▒▒ 20%")
loading_bars("█████▒▒▒▒▒ 40%")
loading_bars("███████▒▒▒ 70%")
loading_bars("██████████ 100%")

puts "Type in your initials: "
initials = gets.chomp.downcase

if initials.length != 2
  puts "Please type in only your first and last initials (no dots or spaces either!): "
  initials = gets.chomp.downcase
end

case initials
when "ab"
  $player_name = "Aldrin Bustos"
when "am"
  $player_name = "Alex Melcon"
when "ad", "ac"
  $player_name = "Alvaro De Castro"
when "al"
  $player_name = "Anthony Leon"
when "bc"
  $player_name = "Bradel Canfield"
when "et"
  $player_name = "Ed Toro"
when "bk"
  $player_name = "Brian Kim"
when "fr"
  $player_name = "Frank Rycak"
when "gg"
  $player_name = "George Gogarten"
when "jn"
  $player_name = "Julio Nunez"
when "fg"
  $player_name = "Franklyn Gaztambide"
when "jl"
  $player_name = "Jermaine Laing"
when "jm"
  puts "Well then! Type 1 for Juha or 2 for Johanna"
  duplicate_resolution = gets.chomp.to_i
  if duplicate_resolution == 1
    $player_name = "Juha Mikkola"
  elsif duplicate_resolution == 2
    $player_name = "Johanna Mikkola"
  else
    puts "Duplicate resolution unsuccessful. You will henceforth be known as
Jamba Morganis"
    $player_name = "Jamba Morganis"
  end
when "jf"
  $player_name = "Jonatan Frencia"
when "km"
  $player_name = "Katerina Markava"
when "mc"
  $player_name = "Matt Campbell"
when "nc"
  $player_name = "Noe Cordovez"
when "mk"
  puts "Well then! Type 1 for Matt Kellough or 2 for Matt King"
  duplicate_resolution = gets.chomp.to_i
  if duplicate_resolution == 1
    $player_name = "Matt Kellough"
  elsif duplicate_resolution == 2
    $player_name = "Matt King"
  else
    puts "Duplicate resolution unsuccessful. You will henceforth be known as
Mortal Kombat"
    $player_name = "Mortal Kombat"
  end
when "mz"
  $player_name = "Milad Zolnoor"
when "nh"
  $player_name = "Neil Haines"
when "nr"
  $player_name = "Nicholas Rodriguez"
when "ns"
  $player_name = "Nick Sellek"
when "ss"
  $player_name = "Sean Sellek"
when "pi"
  $player_name = "Paul Ingelmo"
when "rm"
  $player_name = "Ramon Miquel"
when "rt"
  $player_name = "Robert Tassy"
when "rr"
  $player_name = "Robert Rodriguez"
when "sg"
  $player_name= "Sean Gilchrist"
when "sq"
  $player_name = "Santiago Quintana"
when "sh"
  puts "Well then! Type 1 for Sara Hincapie or 2 for Shannon Hurston"
  duplicate_resolution2 = gets.chomp.to_i
  if duplicate_resolution2 == 1
    $player_name = "Sara Hincapie"
  elsif duplicate_resolution2 == 2
    $player_name = "Shannon Hurston"
  else
    puts "Duplicate resolution unsuccessful. You will henceforth be known as Shia LaBeouf"
    $player_name = "Shia LaBeouf"
  end
when "tb"
  $player_name = "Tommy Bisi"
when "tr"
  $player_name = "Tim Reen"
when "gt"
  puts "GIMLI TICKLEBOTTOM HACK ENABLED. GOLD COINS NOW AT 1,000. (Highest
score achievable). Props on thinking outside the box. GAME OVER!"
  exit
else
  $player_name = initials
  $player_name = $player_name.upcase
  puts "Sorry but I do not recognize you. You are not part of Wyncode Cohort 8."
  puts "You will henceforth be known as #{$player_name}."
end

#initializing variables
$life_points = 1
$gold_coins = 100
$drinks_ingested = 0
$loaded_die = 0
$die_game_attempts = 0

#Welcome messages
puts "Welcome to the game #{$player_name}!"
puts "You currently have #{$life_points} life point and #{$gold_coins} gold coins."
print """You begin your journey in Grog's Tavern. As you look around, you see a few
familiar faces as well as some new ones. Grog's isn't too popular amongst
out-of-towners so you are naturally a bit curious...
But remember...
Curiosity may get you killed.."""

#displays the game over messages
def game_over
  puts "Grog: 'BAR'S CLOSING. You ain't gotta go home but you gotta GTFO of here.'"
  puts "GAME OVER"
end


#runs the scenario of playing the die game
def die_game(x)

    puts """
      .-------.    ______
     /   o   /|   /\\     \\
    /_______/o|  /o \\  o  \\
    | o     | | /   o\\_____\\
    |   o   |o/ \\o   /o    /
    |     o |/   \\ o/  o  /
    \'-------\'     \\/____o/
    """
    if 0.3 + x > rand
      $gold_coins += 100
      $die_game_attempts += 1
      puts "You WIN"
      puts "Gold coins now at #{$gold_coins}"
      puts "Cricket: 'DAMN!''"
      if $die_game_attempts < 3
        puts "Type 1 to play again"
        puts "Type 2 to end game and check final score"
        $die_game_response = gets.chomp
        if $die_game_response == "1"
          die_game(0)
        elsif $die_game_response == "2"
          game_over
        else
          puts "Invalid response. I'm going to assume you meant to type 2"
          game_over
        end
      else
        game_over
      end
    else
      $die_game_attempts += 1
      $gold_coins -= 100
      puts "You LOSE"
      puts "Gold coins now at #{$gold_coins}."
      puts "Cricket: WOOHOO!"
      if $die_game_attempts < 3
      puts "Type 1 to play again"
      puts "Type 2 to end game and check final score"
      die_game_response2 = gets.chomp
      if die_game_response2 == "1"
        die_game(0)
      elsif die_game_response2 == "2"
        game_over
      else
        puts "Invalid response. I'm going to assume you meant to type in 2"
        game_over
      end
    else
      game_over
    end
    end
end

def cricket_loop
  puts "You: 'Sup Cricket. How ya been?!'"
  puts "Cricket: 'Nothin much just shootin the dice you know me haha.'"
  puts "You: 'Damn Cricket you gotta stop blowing your money on that stuff, you
still owe me from last time'"
  puts "Cricket: 'Damn, you're right. Pfffft JK. DOUBLE OR NOTHING??!!'"
  puts "Type 1 to decline the gamble and collect your 100"
  puts "Type 2 to try your luck"
  if $loaded_die == 1
    puts "Type 3 to attempt to cheat with your loaded die"
  end
  cricket_response = gets.chomp
  if cricket_response == "1"
    $gold_coins += 100
    puts "Gold coins now at #{$gold_coins}."
    game_over
  elsif cricket_response == "2"
    die_game(0)
  elsif cricket_response == "3"
    if $loaded_die == 1
      puts "\nDie successfully switched. Chances significantly improved.
Let the cheating begin!"
      die_game(0.5)
    else
      puts "Invalid response. I'm going to assume you typed in 2"
      die_game(0)
    end
  else
    puts "Invalid response. I'm going to assume you typed in 2"
    die_game(0)
  end
end


def cloaked_loop
  if $drinks_ingested < 4
    puts "\nCloaked Mystery Man 1 : 'Get Lost'"
    puts "Type 1 to perform a shove"
    puts "Type 2 to go back to drinking"
    puts "Type 3 to go talk to a familiar face"
    cloak_response = gets.chomp
    if cloak_response == "1"
      puts"""
      @@@@@                                        @@@@@
      @@@@@@@                                      @@@@@@@
      @@@@@@@           @@@@@@@@@@@@@@@            @@@@@@@
      @@@@@@@@       @@@@@@@@@@@@@@@@@@@        @@@@@@@@
         @@@@@     @@@@@@@@@@@@@@@@@@@@@     @@@@@
           @@@@@  @@@@@@@@@@@@@@@@@@@@@@@  @@@@@
             @@  @@@@@@@@@@@@@@@@@@@@@@@@@  @@
                @@@@@@@    @@@@@@    @@@@@@
                @@@@@@      @@@@      @@@@@
                @@@@@@      @@@@      @@@@@
                 @@@@@@    @@@@@@    @@@@@
                  @@@@@@@@@@@  @@@@@@@@@@
                   @@@@@@@@@@  @@@@@@@@@
               @@   @@@@@@@@@@@@@@@@@   @@
               @@@@  @@@@ @ @ @ @ @@@@  @@@@
              @@@@@   @@@ @ @ @ @ @@@   @@@@@
            @@@@@      @@@@@@@@@@@@@      @@@@@
          @@@@          @@@@@@@@@@@          @@@@
       @@@@@              @@@@@@@              @@@@@
      @@@@@@@                                 @@@@@@@
       @@@@@                                   @@@@@"""
      puts "\nThe 5 mystery men throw off their cloaks. It's the Killing Season
Gang. You just got your butt kicked."
      puts "Your gold coins have been stolen"
      $gold_coins = 0
      $life_points -= 1
      puts "Life points now at #{$life_points}"
      puts "GAME OVER"
    elsif cloak_response == "2"
      pub_loop()
    elsif cloak_response == "3"
      cricket_loop()
    else
      puts "Invalid response, I'm going to assume you typed in 2"
      pub_loop()
    end
  else
    puts "\nCloaked Mystery Man 1 : 'You drink like a beast. Much respect. The
name's Ygor. Who are you?''"
    puts "You: 'Thanks. I'm #{$player_name} from Wyncadium. Where you guys from?'"
    puts "Ygor: 'We're from a wooland area named Season. Ever heard of it?''"
    puts "You: 'Can't say that I have.''"
    puts "Ygor: It's cold AF over there. As a matter of fact, main reason we
    traveled here to Grog's is to buy some pelts. I'll buy the one of your back.
    What do you say?"
    puts "Type 1 to sell Ygor your pelt"
    puts "Type 2 to decline"
    pelt_offer = gets.chomp
    if pelt_offer == "1"
      puts "Ygor: 'Awesome. I'll give you 100 gold coins OR I'll give you my
      trusty loaded die. Equally as valuable. Whaddya say?"
      puts "Type 1 for the gold coins"
      puts "Type 2 for the loaded die"
      pelt_offer2 = gets.chomp
      puts "\nYgor: 'Nice doin business with ya'"
      if pelt_offer2 == "1"
        $gold_coins += 100
        puts "Gold coins now at #{$gold_coins}"
        puts "💰💰💰💰💰"
        puts "Type 1 to end game and see final score"
        puts "Type 2 to go talk to a familiar face"
        pelt_offer3 = gets.chomp
        if pelt_offer3 == "1"
          game_over
        elsif pelt_offer3 == "2"
          cricket_loop()
        else
          puts "Invalid response. I'm going to assume you meant to type 1"
          game_over
        end
      elsif pelt_offer2 == "2"
        $loaded_die += 1
        puts "A loaded die has been added to your inventory."
        puts "You: 'Allright see ya!"
        puts "You: (hmm I'm bored, let me go see Cricket)"
        cricket_loop
      else
        puts "Invalid response. I'm going to assume you meant to type 2"
        $loaded_die += 1
        puts "A loaded die has been added to your inventory."
        puts "You: 'Allright see ya!"
        puts "You: (hmm I'm bored, let me go see Cricket)"
        cricket_loop
      end
    elsif pelt_offer == "2"
      puts "Allright, your loss. See ya."
      puts "Type 1 to end the game and see final score."
      puts "Type 2 to go see a familiar face"
      pelt_offer4 = gets.chomp
      if pelt_offer4 == "1"
        puts "GAME OVER"
      elsif pelt_offer4 == "2"
        cricket_loop
      else
        puts "Invalid response. I'm going to assume you meant to type 1"
        puts "GAME OVER"
      end
    else
      puts "Invalid response. I'm going to assume you meant to type 2"
      puts "Allright, your loss. See ya."
      puts "Type 1 to end the game and see final score."
      puts "Type 2 to go see a familiar face"
      pelt_offer5 = gets.chomp
      if pelt_offer5 == "1"
        puts "GAME OVER"
      elsif pelt_offer5 == "2"
        cricket_loop
      else
        puts "Invalid response. I'm going to assume you meant to type 1"
        puts "GAME OVER"
      end
    end


  end
end


def pub_loop2
  puts "\nType 1 to perform a 'DJ Khaled'"
  puts "Type 2 to get up and talk to one of the cloaked mystery men"
  puts "Type 3 to go see a familiar face"
  pub_response2 = gets.chomp
  if pub_response2 == "1"
    puts """
     oOOOOOo
    ,|     |
   //|     |
   \\\\|     |
    `|     |
     `-----`
    """
    puts "ANOTHER ONE!"
    $gold_coins -= 10
    $drinks_ingested += 1
    case $drinks_ingested
    when 2
      puts "Gold coins now at #{$gold_coins}. Drinks ingested now at #{$drinks_ingested}."
      pub_loop2()
    when 3
      puts "Got a nice lil buzz goin!"
      puts "Gold coins now at #{$gold_coins}. Drinks ingested now at #{$drinks_ingested}."
      pub_loop2()
    when 4
      puts "Feelin like you could take on the world!"
      puts "Gold coins now at #{$gold_coins}. Drinks ingested now at #{$drinks_ingested}."
      pub_loop2()
    when 5
      puts "DAT slurred speech doe."
      puts "Gold coins now at #{$gold_coins}. Drinks ingested now at #{$drinks_ingested}."
      pub_loop2()
    when 6
      puts "Uninhibited dancing has commenced"
      puts "Gold coins now at #{$gold_coins}. Drinks ingested now at #{$drinks_ingested}."
      pub_loop2()
    when 7
      puts "Grog: Damn, slow down there"
      puts "Gold coins now at #{$gold_coins}. Drinks ingested now at #{$drinks_ingested}."
      pub_loop2()
    when 8
      puts "WTF is going on"
      puts "Gold coins now at #{$gold_coins}. Drinks ingested now at #{$drinks_ingested}."
      pub_loop2()
    when 9
      puts "APPROACHING TOTAL BLACKOUT"
      puts "Gold coins now at #{$gold_coins}. Drinks ingested now at #{$drinks_ingested}."
      pub_loop2()
    when 10
      puts "Death by inebriation"
      $life_points -= 1
      puts "Life points now at #{$life_points}"
      puts "GAME OVER"
    end
  elsif pub_response2 == "2"
    cloaked_loop()
  elsif pub_response2 == "3"
    cricket_loop()
  else
    puts "Invalid answer. I'm going to pretend you typed 2"
    cloaked_loop()
  end
end


def pub_loop
  puts  """
Type 1 to ask Grog to serve you your usual.
Type 2 to go talk to one of the cloaked mystery men.
Type 3 to go see a familiar face.
  """
  pub_response = gets.chomp
  if pub_response == "1"
    puts """
     oOOOOOo
    ,|     |
   //|     |
   \\\\|     |
    `|     |
     `-----`
    """
    puts "Ahh, a nice frosty brew. Bottoms up!"
    $gold_coins -=10
    $drinks_ingested += 1
    puts "Gold coins now at #{$gold_coins}. Drinks ingested now at #{$drinks_ingested}"
    pub_loop2()
  elsif pub_response == "2"
    cloaked_loop()
  elsif pub_response == "3"
    cricket_loop()
  else
    puts "Invalid response, I'm going to assume you meant to type 2"
    cloaked_loop()
  end
end

pub_loop()

puts "Final score: #{$gold_coins} gold coins."
puts "Highest Scoring Player: Gimli Ticklebottom = 350 Gold Coins"
if $gold_coins > 350
  puts "Congrats you beat the high score!!!"
elsif $gold_coins == 350
  puts "Congrats you matched the high score!!!"
else
  puts "---Think you can beat him?---"
  puts "Gameplay Hint: Try to obtain a special item that increases your odds"
  puts "Hack hint: It is possible to enable a hack at the first prompt of the game"
end
