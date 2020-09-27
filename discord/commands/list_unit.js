module.exports = {
	name:"list_unit",
	description:"Retourne les infos des units.",
	execute(conn, message){
		conn.connect(function(err) {
			if(err) throw err;

			conn.query("SELECT units.id, units.name, units.promo FROM units", function(err,result,fields) {
				if(err) throw err;
					var retStr = "";
					for(var data of result){
						retStr += "**"+data["id"]+" "+data["name"]+"**\n";
					}
					message.channel.send(retStr);
			});
			conn.end();			
		})
	}
}