var xmlHttp;
		var completeDiv;
		var inputFiled;
		var nameTable;
		var nameTableBody;
		
		function createXMLHttp(){
			
			if(window.XMLHttpRequest){
	    		xmlHttp = new XMLHttpRequest();
			}
			if (window.ActiveXObject){
    			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    			if (!xmlHttp){
        		xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
    			}
    		}
		}
		
		function initVars(){
			inputFiled = document.getElementById("search");
			nameTable = document.getElementById("name_table");
			nameTableBody = document.getElementById("name_table_body");
			completeDiv = document.getElementById("pop");
		}
		
		function findNames(){
			
			initVars();
			if(inputFiled.value.length>0){
				createXMLHttp();
				var url="Search?Search="+inputFiled.value;
				url=encodeURI(url); 
   				url=encodeURI(url); //两次，很关键[具体为什么，我也不清楚]
				//xmlHttp.setrequestheader("cache-control","no-cache");  
   				//xmlHttp.setrequestheader("Content-Type","application/x-www-form-urlencoded"); 
   				//xmlHttp.setrequestheader("contentType","text/html;charset=uft-8")//指定发送数据的编码格式
				xmlHttp.open("get",url,true);
				xmlHttp.onreadystatechange =callback;
				xmlHttp.send(null);
			}
		}
		
		
		function callback(){
			
			if(xmlHttp.readyState==4){
				if(xmlHttp.status==200){
					var name = xmlHttp.responseXML.getElementsByTagName("name")[0].firstChild.data;
				//	document.getElementById("search").value(name);
					clearName();
				//	var name2=xmlHttp.responseXML.getElementsByTagName("name");
					inputFiled.value=name;
				//	name2=dcodeURI(name2);
				//	setName(name2);					
				}else if(xmlHttp.status==204){
					clearName();
				}
			}
		}
		
		function setName(nameStr){
		
			clearName();
			var size = nameStr.length;
			setOffsets();
			
			var row,cell,txtNode;
			
			for(var i = 0;i<size; i++){
				var nextNode = nameStr[i].firstChild.data;
				row = document.createElement("tr");
				cell = document.createElement("td");
				
				cell.onmouseover = function(){this.className='mouseOut';};
				cell.onmouseout = function(){this.className='mouseOver';};
				cell.setAttribute("bgcolor","#FFFAFA");
				cell.setAttribute("border","0");
				cell.onclick = function(){populateName(this);};
			
				txtNode = document.createTextNode(nextNode);
				cell.appendChild(txtNode);
				row.appendChild(cell);
				nameTableBody.appendChild(row);
			}
		}
		
		function setOffsets(){
			
			var end = inputFiled.offsetWidth;//输入框器件的宽度
			var left = caculateOffSetLeft(inputFiled);//输入框的高度
			var top = caculateOffSetTop(inputFiled) + inputFiled.offsetHeight;
			
			completeDiv.style.border = "blue 1px solid";
			completeDiv.style.left = left + "px";
			completeDiv.style.top = top + "px";
			completeDiv.style.width = end + "px";
			nameTable.style.width = end + "px";
		}
		
		function caculateOffSetLeft(filed){
			return caculateOffSet(filed,"offsetLeft");
		}
		
		function caculateOffSetTop(filed){
			return caculateOffSet(filed,"offsetTop");
		}
		
		function caculateOffSet(filed,attr){
			var offset = filed[attr];
			//while(filed){
			//	offset += filed[attr];
			//	filed = filed.offsetParent;
			//}
			return offset;
		}
		function populateName(cell){
			inputFiled.value = cell.firstChild.nodeValue;
			clearName();
		}
		
		function clearName(){
			var size = nameTableBody.childNodes.length;
			for(var i = size -1 ;i>= 0 ;i--){
				nameTableBody.removeChild(nameTableBody.childNodes[i]);
			}
			completeDiv.style.border = "none";
		}