#include <string>
#include <fstream>
#include <streambuf>
#include "sleepy_discord\sleepy_discord.h"


extern "C"
{
    char* OnMessageASM(void);
    //int hello(void);
    //char* = charpointer
}


class MyClientClass : public SleepyDiscord::DiscordClient {
public:
    using SleepyDiscord::DiscordClient::DiscordClient;
    void onMessage(SleepyDiscord::Message message) override {
        if (message.startsWith("="))
        {
            char buff[100];
            snprintf(buff, sizeof(buff), "hello %s", OnMessageASM());
            std::string buffAsStdStr = buff;
            sendMessage(message.channelID, buffAsStdStr);
        }
        //stdstring - try and find if you can recreate this in ASM
    }
};

int main() {
    std::ifstream t("Token.txt");
    std::string token((std::istreambuf_iterator<char>(t)),
        std::istreambuf_iterator<char>());
    MyClientClass client(token, SleepyDiscord::USER_CONTROLED_THREADS);
    client.run();
}




