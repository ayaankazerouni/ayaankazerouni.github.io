window.onload = () => {
  // Create a tooltip element.
  const tooltip = document.createElement('div');
  tooltip.classList.add('fn-tooltip');
  tooltip.style.display = 'none'
  document.body.appendChild(tooltip);
  
  document.querySelectorAll('[id^="fnref:"]').forEach(fnref => {
    fnref.addEventListener('mouseenter', function(e) {
        const ref = this.id.split(':')[1];
        const footnote = document.querySelector(`#fn\\:${ref}`);
        if (footnote) {
            const text = footnote.textContent.replace('↩', '').trim();
            tooltip.textContent = text;
            tooltip.style.display = 'block';
            tooltip.style.top = `${e.pageY + 10}px`;
            tooltip.style.left = `${e.pageX + 10}px`;
        }
    });

    fnref.addEventListener('mousemove', function(e) {
      tooltip.style.top = `${e.pageY + 10}px`;
      tooltip.style.left = `${e.pageX + 10}px`;
    });

    fnref.addEventListener('mouseleave', function(e) {
      tooltip.style.display = 'none';
      tooltip.textContent = '';
    });
  });
};
