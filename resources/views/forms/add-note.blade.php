<div class="form-group">
    {!!  Form::open(['url' => '/']) !!}
    <div class="modal-body">
        <div class="form-group">
            {!! Form::label('title', 'Enter a title', array('for' => 'titleInput')) !!}
            {!! Form::text('title', '', array('id'=>'titleInput','type'=>'text','maxlength'=>'45','placeholder'=>'Enter a title','class'=>'form-control','autofocus','required')) !!}
            <small id="emailHelp" class="form-text text-muted">Make it something memorable, up to 45 characters.</small>
        </div>
        {!! Form::label('note', 'Add your notes below', array('for' => 'noteInput')) !!}
        {!! Form::textarea('note', '', array('class'=>'form-control','id'=>'noteInput','type'=>'textarea','maxlength'=>'240','rows'=>'3','placeholder' => 'Enter your notes up to 256 characters.','required')) !!}
        <small id="emailHelp" class="form-text text-muted">Enter a short note. You can always edit o delete it later.</small>
    <div class="note-checkbox">
        {!! Form::checkbox('agree', 'yes', false, array('id'=>'note-check', 'onclick'=>'enableAddNote()')) !!}
        {!! Form::label('agree', 'I agree to the terms of usage and services.') !!}
    </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        {!! Form::submit('Save Note', array('type' => 'button', 'id'=>'a-note-button' ,'class' =>'btn btn-primary')) !!}
    </div>
    {!!  Form::close() !!}
</div>