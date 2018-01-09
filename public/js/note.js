
    var orig = $('textarea#noteInput').text();
    function revertText() {
        $('textarea#noteInput').val(this.orig);
        console.log('Note reset to: ' + this.orig);
    }

    $('#a-note-button').hide();
    function enableAddNote() {
        $('#a-note-button').show();
    }