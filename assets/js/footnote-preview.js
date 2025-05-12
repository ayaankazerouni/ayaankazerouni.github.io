window.onload = () => {
  // Create a tooltip element.
  const tooltip = document.createElement('div');
  tooltip.classList.add('fn-tooltip');
  tooltip.style.display = 'none'
  document.body.appendChild(tooltip);
  
  document.querySelectorAll('[id^="fnref:"]').forEach(fnref => {
    let overTooltip = false;
    let hideTimeout;

    tooltip.addEventListener('mouseenter', () => {
      overTooltip = true;
      clearTimeout(hideTimeout);
    });

    tooltip.addEventListener('mouseleave', () => {
      overTooltip = false;
      hideWithDelay();
    });

    fnref.addEventListener('mouseenter', function(e) {
        const ref = this.id.split(':')[1];
        const footnote = document.querySelector(`#fn\\:${ref}`);
        if (footnote) {
            const text = sanitizeHTML(footnote.innerHTML).replace('↩', '').trim();;
            tooltip.innerHTML = text;
            tooltip.style.display = 'block';
            tooltip.style.top = `${e.pageY + 10}px`;
            tooltip.style.left = `${e.pageX + 10}px`;
            tooltip.style.pointerEvents = 'auto';
        }
        clearTimeout(hideTimeout)
    });

    fnref.addEventListener('mousemove', function(e) {
      tooltip.style.top = `${fnref.pageY + 10}px`;
      tooltip.style.left = `${fnref.pageX + 10}px`;
    });

    fnref.addEventListener('mouseleave', function(e) {
      hideWithDelay();
    });

    function hideWithDelay() {
      hideTimeout = setTimeout(() => {
        if (!overTooltip) {
          tooltip.style.display = 'none';
          tooltip.textContent = '';
        }
      }, 100);
    }

    // Preserve markup but remove other HTML tags
    function sanitizeHTML(input) {
      const allowedTags = new Set(['B', 'I', 'STRONG', 'A']);
      const container = document.createElement('div');
      container.innerHTML = input;

      function sanitize(node) {
        for (const child of [...node.children]) {
          if (!allowedTags.has(child.tagName)) { // If the tag is not allowed...
            child.replaceWith(...child.childNodes); // ..remove the disallowed tag, keep its content.
          } else {
            sanitize(child); // Recurse into allowed tag.
          }
        }
      }

      sanitize(container);
      return container.innerHTML;
    }
  });
};
