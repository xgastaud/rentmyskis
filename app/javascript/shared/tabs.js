function classUpdate() {
  const tabs = document.querySelectorAll(".tab");
  const tabContent = document.querySelectorAll(".tab-content");
  if (!event.currentTarget.classList.contains("tab-active")) {
    tabs.forEach(tab => tab.classList.toggle("tab-active"));
    tabContent.forEach(tab => tab.classList.toggle("hidden"));
  };

}

function toggleClass() {
  const tabs = document.querySelectorAll(".tab");
  tabs.forEach(tab => tab.addEventListener("click", classUpdate));
}

export {toggleClass};
