function tdl() 
{   
    nom=window.document.getElementById('nom').value ;
    desc=window.document.getElementById('desc').value ;
    datef=window.document.getElementById('datef').value ;
    httpRequest = new XMLHttpRequest();
			  httpRequest.onreadystatechange = function() 
  			{
      			document.getElementById("tableau").innerHTML = this.responseText;
  			};
  			httpRequest.open("GET","tache.php?nom="+nom+"&desc="+desc+"&datef="+datef);
  			httpRequest.send();
    
}

function tdlu(id) 
{  
    httpRequest = new XMLHttpRequest();
			  httpRequest.onreadystatechange = function() 
  			{
      			document.getElementById("tableau").innerHTML = this.responseText;
  			};
  			httpRequest.open("GET","tache.php?id="+id+"&mod");
  			httpRequest.send();
    
}

function tdls(id) 
{   

    httpRequest = new XMLHttpRequest();
			  httpRequest.onreadystatechange = function() 
  			{
      			document.getElementById("tableau").innerHTML = this.responseText;
  			};
  			httpRequest.open("GET","tache.php?id="+id+"&sup");
  			httpRequest.send();
    
}