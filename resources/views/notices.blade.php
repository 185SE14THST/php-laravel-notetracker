@if(Session::has('success'))
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true"><strong>{!! session('success') !!}&times;</strong></span>
    </button>
@endif
@if(Session::has('warning'))
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true"><strong>{!! session('warning') !!}&times;</strong></span>
    </button>
@endif
@if(Session::has('info'))
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true"><strong>{!! session('info') !!}&times;</strong></span>
    </button>
@endif
@if(Session::has('danger'))
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true"><strong>{!! session('danger') !!}&times;</strong></span>
    </button>
@endif