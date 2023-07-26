document.getElementById('copy-button').addEventListener('click', function () {
    var textArea = document.createElement('textarea');
    textArea.value = '<?= $currentUrl ?>';
    document.body.appendChild(textArea);
    textArea.select();
    try {
        document.execCommand('copy');
        alert('URL copied to clipboard.');
    } catch (err) {
        console.error('Unable to copy URL: ', err);
    }
    document.body.removeChild(textArea);
});