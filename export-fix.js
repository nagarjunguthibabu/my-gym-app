/* Gym Premium V5.1 iPhone-safe export fix */
window.exportData = async function exportData() {
  const payload = JSON.stringify(d, null, 2);
  const stamp = new Date().toISOString().slice(0, 10);
  const filename = `gym-plan-backup-${stamp}.json`;

  try {
    const file = new File([payload], filename, { type: 'application/json' });
    if (navigator.canShare && navigator.canShare({ files: [file] }) && navigator.share) {
      await navigator.share({
        title: 'Gym Plan backup',
        text: 'My Gym Plan V5.1 backup',
        files: [file]
      });
      if (typeof toast === 'function') toast('Backup ready. Choose Save to Files.');
      return;
    }
  } catch (error) {
    if (error && error.name === 'AbortError') return;
    console.warn('Native share export unavailable', error);
  }

  try {
    const encoded = encodeURIComponent(payload);
    const link = document.createElement('a');
    link.href = `data:application/json;charset=utf-8,${encoded}`;
    link.download = filename;
    link.style.display = 'none';
    document.body.appendChild(link);
    link.click();
    link.remove();
    if (typeof toast === 'function') toast('Backup downloaded. Check Files > Downloads.');
    return;
  } catch (error) {
    console.warn('Download export unavailable', error);
  }

  try {
    await navigator.clipboard.writeText(payload);
    alert('The backup JSON was copied to the clipboard. Paste it into a text file and save it as ' + filename);
  } catch (error) {
    prompt('Copy all backup data below and save it as ' + filename, payload);
  }
};
