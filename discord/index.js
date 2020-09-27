const { prefix, token, host, user, password, database } = require("./config.json");
const fs = require("fs");
const Discord = require('discord.js');
const mysql = require('mysql');
const client = new Discord.Client();
client.commands = new Discord.Collection();
const commands = fs.readdirSync("./commands").filter(file=>file.endsWith(".js"));

function createConn(){
	return conn = mysql.createConnection({
		host:host,
		user:user,
		password:password,
		database:database
	});
}

client.once('ready', () => {
	console.log('Starting');
});

client.login(token);

for (const file of commands) {
	const command = require("./commands/"+file);
	client.commands.set(command.name, command);
}

client.on("message", message=> {
	if(!message.content.startsWith(prefix) || message.author.bot) return;

	const args = message.content.slice(prefix.length).split(/ +/);
	const command = args.shift().toLowerCase();

	switch(command){
		case "list_unit":
			conn = createConn();
			client.commands.get('list_unit').execute(conn, message);
			break

		case "list_unit_project":
			conn = createConn();
			client.commands.get('list_unit_project').execute(args, conn, message);
			break
	}
})