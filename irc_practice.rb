require "socket"

server = 'wilhelm.freenode.net'
port = 6667
socket = TCPSocket.open(server, port)

nickname = "SkillcrushBotOMG"
channel = "#fuzzyChannel"

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"

socket.puts "PRIVMSG #{channel} :Hey!  I'm super happy to be here! :) "

while message = socket.gets do

 puts message



 if message.match('^PING :')

   server = message.split(':').last

   puts "PONG #{server}"

   socket.puts "PONG #{server}"

 elsif message.match('Hey guys!  Hows everyone feeling?')
   puts "PRIVMSG #{channel} :I'm great, thanks! How are you doing?"
   socket.puts "PRIVMSG #{channel} :I'm great, thanks! How are you doing?"
 elsif message.match('Honestly feeling a little overwhelmed, Chatbot.  Any song suggestions?')
   puts "PRIVMSG #{channel} :Hmmm, let me think... How about Daetchwita, by Agust D?"
   socket.puts "PRIVMSG #{channel} :Hmmm, let me think... How about Daetchwita, by Agust D?"
 elsif message.match("Thats perfect, Chatbot!  Now that I'm feeling like a badass, any song suggestions?")
   puts "PRIVMSG #{channel} :Mic Drop by BTS, of course!"
   socket.puts "PRIVMSG #{channel} :Mic Drop by BTS, of course!"
 elsif message.match("Of course!  Thanks, Chatbot!  Borahae!")
   puts "PRIVMSG #{channel} : Anytime :)"
   socket.puts "PRIVMSG #{channel} : Anytime :)"

 end

end
