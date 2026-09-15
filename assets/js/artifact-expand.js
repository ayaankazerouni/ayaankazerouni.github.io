window.addEventListener("load", () => {
  const details = document.querySelectorAll("details");
  const filterBar = document.querySelector(".topic-filter");

  details.forEach((d) => {
    d.addEventListener("toggle", () => {
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

  function artifactFromHash() {
    return document.getElementById(`p_${window.location.hash.slice(1)}`);
  }

  function topicFromUrl() {
    return new URLSearchParams(window.location.search).get("topic") || "";
  }

  function urlWith(topic, hash) {
    const url = new URL(window.location.href);
    if (topic) {
      url.searchParams.set("topic", topic);
    } else {
      url.searchParams.delete("topic");
    }
    url.hash = hash;
    return url;
  }

  // Returns the topic actually applied: an unknown topic shows everything.
  function applyFilter(topic) {
    const matches = [...details].filter((d) =>
      d.dataset.topics?.split("|").includes(topic)
    );
    if (matches.length === 0) {
      topic = "";
    }
    details.forEach((d) => {
      d.hidden = topic !== "" && !matches.includes(d);
    });
    filterBar.querySelectorAll("a[data-topic]").forEach((a) => {
      if (a.dataset.topic === topic) {
        a.setAttribute("aria-current", "true");
      } else {
        a.removeAttribute("aria-current");
      }
    });
    return topic;
  }

  function syncFromUrl(scroll) {
    const artifact = artifactFromHash();
    if (filterBar) {
      const requested = topicFromUrl();
      let topic = applyFilter(requested);
      if (artifact?.hidden) {
        topic = applyFilter("");
      }
      if (topic !== requested) {
        history.replaceState(null, "", urlWith(topic, window.location.hash));
      }
    }
    if (artifact) {
      artifact.open = true;
      if (scroll) {
        artifact.scrollIntoView();
      }
    }
  }

  if (filterBar) {
    filterBar.addEventListener("click", (e) => {
      const link = e.target.closest("a[data-topic]");
      if (!link || e.metaKey || e.ctrlKey || e.shiftKey || e.altKey) {
        return;
      }
      e.preventDefault();
      const clicked = link.dataset.topic;
      const topic = applyFilter(clicked === topicFromUrl() ? "" : clicked);
      let hash = window.location.hash;
      const open = artifactFromHash();
      if (open?.hidden) {
        open.open = false;
        hash = "";
      }
      history.pushState(null, "", urlWith(topic, hash));
    });
    window.addEventListener("popstate", () => syncFromUrl(false));
  }

  syncFromUrl(true);
});
