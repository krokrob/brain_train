
var start = 0
var end = 0
var diff = 0
var timerID = 0
function chrono(){
  end = new Date()
  diff = end - start
  diff = new Date(diff)

  var sec = diff.getSeconds()
  var min = diff.getMinutes()

  if (min < 10){
    min = "0" + min
  }
  if (sec < 10){
    sec = "0" + sec
  }

  document.getElementById("chronotime").innerHTML = min + ":" + sec
  timerID = setTimeout("chrono()", 10)
}
function chronoStart(){
  document.chronoForm.startstop.value = "stop!"
  document.chronoForm.startstop.onclick = chronoStop
  start = new Date()
  chrono()
}

function chronoStop(){
  document.chronoForm.startstop.value = "start!"
  clearTimeout(timerID)
}
