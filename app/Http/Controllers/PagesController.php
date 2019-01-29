<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index() {
        $title = 'Simple Restful API Webservice';
        return view('pages.index')->with('title', $title);
    }
}
