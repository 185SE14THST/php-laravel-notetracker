@extends('layouts.app')

@section('content')
    @if( auth()->check() )
    <div class="container">


        <h3>My Notes </h3>
        <div>
            <table class="table table-hover table-sm">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Date</th>
                    <th scope="col">Title</th>
                    <th scope="col">Preview</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>
                @php $t = 1 @endphp
                @foreach($notes as $n)
                    <tr>
                        <th scope="row">{{ $t++ }}</th>
                        <td>{{ $n->updated_at->diffForHumans() }}</td>
                        <td>{{ $n->title }} </td>
                        <td data-toggle="tooltip" data-placement="top" title="{{$n->note}}">
                            {{ substr($n->note, 0, 55) }}...
                        </td>
                        <td>
                            <a href="note/{{ $n->id }}" data-toggle="tooltip" data-placement="top" title="Edit this note"><span><i class="fa fa-address-book-o" aria-hidden="true"></i></span></a>
                            <a href="delete/{{ $n->id }}" data-toggle="tooltip" data-placement="top" title="Delete this note"><span><i class="fa fa-trash" aria-hidden="true"></i></span></a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    @endif
@endsection