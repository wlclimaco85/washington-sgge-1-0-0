convertBanco = function(stipo,iTamanho){
var sReturn = "";
	switch(stipo) {
	    case "String":
	        sReturn = "character varying("+iTamanho+")"
	        break;
	    case "Long":
	        sReturn = "bigint"
	        break;
	    default:
	        sReturn = stipo.toLowerCase();
	        break;
	}
	return sReturn;
}
dataAtualFormatada = function (){
    var data = new Date();
    var dia = data.getDate();
    if (dia.toString().length == 1)
      dia = "0"+dia;
    var mes = data.getMonth()+1;
    if (mes.toString().length == 1)
      mes = "0"+mes;
    var ano = data.getFullYear();
    return dia+"/"+mes+"/"+ano+" "+data.getHours()+":"+data.getMinutes()+" : "+data.getSeconds();
}

titleize = function (text) {

	if((text !== " ") && (text !== "") && (text !== undefined) ){
    // Convertendo primeira letra em maiuscula.
    text = text.charAt(0).toUpperCase() + text.slice(1);

    for (var i = 0; i < text.length; i++) {
        if (text.charAt(i) ===" ") {

            // Convertendo letra ap�s o ESPA�O em maiuscula
            var charToUper = text.charAt(i+1).toUpperCase();

            // Colocando texto de antes do ESPA�O na vari�vel
            var sliceBegin = text.slice(0, (i+1));

            // colocando o texto de depois do ESPA�O na vari�vel
            var sliceEnd = text.slice(i + 2);

            // Juntando tudo
            text = sliceBegin + charToUper + sliceEnd;

        } else {

            // NAO CONSIGO PENSAR EM COMO TRANSFORMAR O RESTANTE DAS LETRAS EM MINUSCULA
        }
    }
	}
    return text;
}