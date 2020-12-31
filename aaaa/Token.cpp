//pulled from sleepydiscord
class MyClientClass : public ProjetMalco::DiscordClient {
public:
	using ProjectMalco::DiscordClient::DiscordClient;
	void onMessage(ProjectMalco::Message message) override {
		if (message.startsWith("=Hi"))
			sendMessage(message.channelID, "Greetings, " + message.author.username);
	}
};

int main() {
	myClientClass client("token", ProjectMalco::USER_CONTROLED_THREADS);
	client.run();
}