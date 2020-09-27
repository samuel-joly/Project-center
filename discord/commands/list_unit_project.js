module.exports = {
	name:"list_unit_project",
	description:"Retourne les projet de l'unit specifié",
	execute(id_unit, conn, message){
		if (!Number.isInteger(parseInt(id_unit))) {
			message.channel.send("Aucune unit coisie (*Exemple*: `!list_unit_project 1`)");
			return false;
		}
		conn.connect(function(err){
			if(err) throw err;

			conn.query("SELECT projects.id, projects.name, projects.pdf,"+
				" requirements.html, requirements.css, requirements.js, requirements.php, requirements.dtb"+
				" FROM projects INNER JOIN requirements ON projects.id = requirements.id_project WHERE projects.unit = "+id_unit, function(err, result, fields) {
				if(err) throw err;
				var retStr = "";
				for(var data of result) {

					var requirements = "";
					for(var key in data){
						if(Number.isInteger(data[key]) && data[key] != 0 && key != "id") {
							requirements += " `"+key.toUpperCase()+":"+data[key]+"`";
						}
					}
					
					if(retStr.length > 1700){
						retStr += data["id"]+") **"+data["name"]+"** -- Prérequis :"+requirements+" \nPDF: https://samuel-joly.students-laplateforme.io/project-stock/"+data["pdf"]+"\n";
						message.channel.send(retStr);
						retStr = "";
					} else {
						retStr += data["id"]+") **"+data["name"]+"** -- Prérequis :"+requirements+" \nPDF: https://samuel-joly.students-laplateforme.io/project-stock/"+data["pdf"]+"\n";
					}
				}
				message.channel.send(retStr);
			})
		})
	}
}