

if(document.getElementById("sub-component-list")!==null){
    addEventListener('load',(e)=>{
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById("sub-component-list").innerHTML=this.responseText;
    }
  };
  xhttp.open("GET", "./getsubcomponents", true);
  xhttp.send();
})
    
}


if(document.getElementById("year-list")!==null){
    addEventListener('load',(e)=>{
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById("year-list").innerHTML=this.responseText;
    }
  };
  xhttp.open("GET", "./getYears", true);
  xhttp.send();
})
    
}

if(document.getElementById("sub-component-list")!==null){
    document.getElementById("sub-component-list").addEventListener('change',(e)=>{
        e.preventDefault();
        console.log("changed.....");
    })
    
}




function Confirm(title, msg, $true, $false, $link) { /*change*/
        var $content =  "<div class='dialog-ovelay'>" +
                        "<div class='dialog'><header>" +
                         " <h3> " + title + " </h3> " +
                         "<i class='fa fa-close'></i>" +
                     "</header>" +
                     "<div class='dialog-msg'>" +
                         " <p> " + msg + " </p> " +
                     "</div>" +
                     "<footer>" +
                         "<div class='controls'>" +
                             " <button class='button button-danger doAction'>" + $true + "</button> " +
                             " <button class='button button-default cancelAction'>" + $false + "</button> " +
                         "</div>" +
                     "</footer>" +
                  "</div>" +
                "</div>";
         $('body').prepend($content);
      $('.doAction').click(function () {
          
        $('form').submit();
         
      });
$('.cancelAction, .fa-close').click(function () {
      
        $(this).parents('.dialog-ovelay').fadeOut(500, function () {
          $(this).remove();
        });
      });
      
   }
$('.submit-confirmation').click(function () {
        Confirm('Go for Submission', 'Are you sure you want to Submit', 'Yes', 'Cancel', "https://www.google.com.eg"); /*change*/
        
});
