window.onload = () => {
  let hash = window.location.hash.substr(1);
  const artifact = document.getElementById(`p_${hash}`);
  if (artifact) {
    artifact.open = true;
    artifact.scrollIntoView();
  }

  const details = document.querySelectorAll("details");
  details.forEach((d) => {
    d.addEventListener("toggle", (e) => {
      if (d.open) {
        openDetail(d);
      }
    });
  });

  function openDetail(target) {
    details.forEach((detail) => {
      if (detail !== target) {
        detail.open = false;
      }
    });
    const hash = target.id.substr(2);
    window.location.hash = target.id.substr(2);
  }
};
