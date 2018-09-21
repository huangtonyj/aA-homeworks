// asynchronous example
window.setTimeout(function () {
  alert('HAMMERTIME')
}, 5000);


function hammerTime(time) {
  window.setTimeout(function() {
    console.log(`${time} is hammertime!`)
  })
}
