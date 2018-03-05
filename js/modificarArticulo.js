  var j=0;
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
    var editableText = $("<textarea/>");
    editableText.val(divHtml);
    $(area).replaceWith(editableText);
    editableText.focus();
    // setup the blur event for this new textarea
    editableText.blur(editableTextBlurredTitulo);
  }
  function divClickedContenido(area) {
    var divHtml = $(area).html();
    var editableText = $("<textarea style='height:20%';/>");
    editableText.val(divHtml);
    $(area).replaceWith(editableText);
    editableText.focus();
    // setup the blur event for this new textarea
    editableText.blur(editableTextBlurredContenido);
  }
  function divClickedPregunta(area,i) {
    var divHtml = $(area).html();
    var editableText = $("<textarea />");
    editableText.val(divHtml);
    $(area).replaceWith(editableText);
    editableText.focus();
    // setup the blur event for this new textarea
    j=i;
    editableText.blur(editableTextBlurredPregunta);
  }
  function editableTextBlurredTitulo(){
    var html = $(this).val();
    var viewableText = $("<div id='titulo'style='padding:15px;'/>");
    viewableText.html(html)
    $(this).replaceWith(viewableText);
    // setup the click event for this new div
    viewableText.click(divClickedTitulo);
  }
  function editableTextBlurredContenido(){
    var html = $(this).val();
    var viewableText = $("<div id='contenido'style='padding:15px;'/>");
    viewableText.html(html)
    $(this).replaceWith(viewableText);
    // setup the click event for this new div
    viewableText.click(divClickedContenido);
  }
  function editableTextBlurredPregunta(){
    var html = $(this).val();
    var viewableText = $("<div id='pregunta"+j+"'style='padding:15px;'/>");
    viewableText.html(html)
    $(this).replaceWith(viewableText);
    // setup the click event for this new div
    viewableText.click(divClickedPregunta);
  }