window.onload = function(){
  var deleteDog = document.getElementById("delete");
  deleteDog.addEventListener("click", function(){
    confirm("Are you sure you want to delete this dog?");
  });
};