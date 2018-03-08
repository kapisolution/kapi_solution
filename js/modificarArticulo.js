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
  function editarPregunta(i){
    var area ="#pregunta"+i;
    divClickedPregunta(area, i);
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
    $("body").click(editableTextBlurredTitulo);
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
    $("body").click(editableTextBlurredContenido);
  }
  function divClickedPregunta(area,i) {
    var divHtml = $(area).html();
    var editableText = $("<textarea id='textoPregunta' />");
    editableText.val(divHtml);
    $(area).replaceWith(editableText);
    //tinymce.init({ selector:'textarea#textoPregunta' });
    textarea="textoPregunta";
    id="textoPregunta";
    editableText.focus();
    j=i;
    $("body").click(editableTextBlurredPregunta);
  }
  function editableTextBlurredTitulo(){
    if (!$(event.target).closest("form").length) {   
      //if(tinymce.activeEditor!=null){
          //var html = tinymce.activeEditor.getContent();
          //tinymce.remove();		    
          var e = $("textarea#textoTitulo");
          var valor = e.val();
          e.replaceWith('<div style="padding:10px;" id="titulo">' + valor + '</div>');
          $("body").off('click');
      }
    //} 
  }
  function editableTextBlurredContenido(){
    if (!$(event.target).closest("form").length && !$(event.target).closest(".mce-widget").length) {   
      if(tinymce.activeEditor!=null){
          var html = tinymce.activeEditor.getContent();
          tinymce.remove();		    
          var e = $("textarea#textoContenido");
          var valor = e.val();
          e.replaceWith('<div style="padding:10px;" id="contenido">' + valor + '</div>');
          $("body").off('click');	    
      }
    }
  }
  function editableTextBlurredPregunta(){
    if (!$(event.target).closest("form").length) {   
      //if(tinymce.activeEditor!=null){
          //var html = tinymce.activeEditor.getContent();
          //tinymce.remove();		    
          var e = $("textarea#textoPregunta");
          var valor = e.val();
          e.replaceWith("<div id='pregunta"+j+"'style='padding:15px;'>" + valor + '</div>');
          $("body").off('click');    
      }
    //}
  }
  