<?php

namespace App\Http\Controllers;
use App\Note;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ListController extends Controller
{

    public function create (Request $input) {
        //Note::inRandomOrder()->first();
        if (isset($input)) {
            $metadata = array(
                "entryPage" => $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'],
                "referrer" => (isset($_SERVER['HTTP_REFERER'])) ? $_SERVER['HTTP_REFERER'] : "None",
                "ip_address" => ($_SERVER['REMOTE_ADDR']) ? $_SERVER['REMOTE_ADDR'] : "Unknown",
                "user_agent" => $_SERVER['HTTP_USER_AGENT'],
                "country" => "IT",
                "client_application" => "Unknown"
            );
            $new = new Note();
            $new->user_id = auth()->user()->id;
            $new->title = $input->title;
            $new->note = $input->note;
            $new->metadata = json_encode($metadata);
            $new->shared_key = uniqid(auth()->user()->id);
            $new->status = 1;
            $new->save();
            return redirect('/');
        }
        return redirect('/');
    }

    public function show()
    {
        if (Auth::id()) {
            $note = Note::inRandomOrder()->first();
            $notes = Note::where('user_id', auth()->user()->id)->orderBy('notes.updated_at', 'DESC')->get();
            //Session::flash('success',auth()->user()->id);
            return view('welcome', array(
                'note' => $note,
                'notes' => $notes
            ));
        }
        return view('auth.login');
    }

    public function note($id)
    {
        $note = Note::where('id', $id)->get();
        return view('note', array(
            'data'  => $note
        ));
    }

    public function edit(Request $input)
    {
        Note::where('id', $input->id)->update([
            'title' => $input->title,
            'note' => $input->note
        ]);
        return redirect('/');
    }

    public function delete (Request $input)
    {
        Note::where('id', $input->id)->delete();
        return redirect('/');
    }

}