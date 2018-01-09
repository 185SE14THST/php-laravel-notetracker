@extends('layouts.app')

@section('content')
    <div class="container">
      <h1>{{$data[0]->title}}</h1>
        <p>
        {!!  Form::open(['url' => '/edit/$id']) !!}</p>
        {!! Form::hidden ('id', $data[0]->id) !!}
        <p>
            {!! Form::label('title', 'Update you title below', array('for' => 'titleInput')) !!}
            {!! Form::text('title', $data[0]->title, array('id'=>'titleInput','placeholder'=>'Enter a title','maxlength'=>'45','class'=>'form-control')) !!}
        </p>
        <p>
            {!! Form::label('note', 'Update your notes below', array('for' => 'noteInput')) !!}
            {!! Form::textarea('note', $data[0]->note, array('class'=>'form-control','id'=>'noteInput','type'=>'textarea','maxlength'=>'240','rows'=>'3','placeholder' => 'Enter your notes up to 240 characters.')) !!}
        </p>
        <a href="/" type="button" class="btn btn-default">Go back</a>
        {!! Form::submit('Save changes', array('type' => 'button', 'id'=>'editNotes', 'class' =>'btn btn-primary')) !!}
        <a type="button" onclick="revertText()" class="btn btn-default">Revert</a>
        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">
                Manage This Note... <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="#">Share</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Copy Link to Clipboard</a></li>
            </ul>
        </div>

        <hr>
        <p class="a-note"><strong>Original:</strong> <q>{{$data[0]->note}}</q></p>

        <div>
            <table class="table table-hover table-sm">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Created</th>
                    <th scope="col">Last</th>
                    <th scope="col">Words</th>
                    <th scope="col">Metadata</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>{{$data[0]->id}}</td>
                    <td> {{$data[0]->created_at}}</td>
                    <td> {{$data[0]->updated_at}}</td>
                    <td> {{str_word_count($data[0]->note)}}</td>
                    <td>
                        @php $metadata = json_decode($data[0]->metadata) @endphp
                        {{ $data[0]->metadata }}
                    </td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>
@endsection