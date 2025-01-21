window.onload = () => {
  let hash = window.location.hash.slice(1);
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
    window.location.hash = target.id.slice(2);
  }
};
