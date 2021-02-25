

const flashMsg = () => {
  const msgElement = document.getElementById("flash");

  const removeMessage = () => {
    msgElement.remove();
  };

  if (msgElement){
    setTimeout(removeMessage, 5000);
  }
};
export {flashMsg };
