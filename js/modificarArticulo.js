  var j=0;
  var textarea;
  function editarTitulo(){
    var area ="#titulo";
    divClickedTitulo(area);
  }
  function editarContenido(){
    var area ="#contenido";
    divClickedContenido(area);
  }
  function divClickedTitulo(area) {
    var divHtml = $(area).html();
    var editableText = $("<textarea id='textoTitulo'/>");
    editableText.val(divHtml);
    $(area).replaceWith(editableText);
    //tinymce.init({ selector:'textarea#textoTitulo' });
    textarea="textoTitulo";
    id="textoTitulo";
    editableText.focus();
    $("#guardarTitulo").click(editableTextBlurredTitulo);
  }
  function divClickedContenido(area) {
    var divHtml = $(area).html();
    var editableText = $("<textarea id='textoContenido' style='height:20%';/>");
    editableText.val(divHtml);
    $(area).replaceWith(editableText);
    tinymce.init({ selector:'textarea#textoContenido' });
    textarea="textoContenido";
    id="textoContenido";
    editableText.focus();
    $("#guardarContenido").click(editableTextBlurredContenido);
  }
  function editableTextBlurredTitulo(){
      var e = $("textarea#textoTitulo");
      var valor = e.val();
      e.replaceWith('<div style="padding:10px;" id="titulo">' + valor + '</div>');
  }
  function editableTextBlurredContenido(){   
      if(tinymce.activeEditor!=null){
          var html = tinymce.activeEditor.getContent();
          tinymce.remove();		    
          var e = $("textarea#textoContenido");
          var valor = e.val();
          e.replaceWith('<div style="padding:10px;" id="contenido">' + valor + '</div>');
          $("body").off('click');	    
      }
  }
  