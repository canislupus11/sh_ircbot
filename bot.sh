    echo "NICK BOT" > bot.pipe
    echo "USER username hostname servername :realname +iw pingbot :$0" >> bot.pipe   
    echo "JOIN #cupcakespace-krk" >> bot.pipe
    tail -f bot.pipe | telnet irc.freenode.net 6667 | while read res
        do
                case "$res" in
                        *dupa*) echo "PRIVMSG #cupcakespace-krk :1" >> bot.pipe;;
                        *PING*) echo "PRIVMSG #cupcakespace-krk :PONG" >> bot.pipe
                esac
    done
