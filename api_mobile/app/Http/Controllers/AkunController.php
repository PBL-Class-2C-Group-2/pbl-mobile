<?php

namespace App\Http\Controllers;

use App\Models\Akun;
use App\Http\Resources\AkunResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class AkunController extends Controller
{
    public function index()
    {
        $user = Akun::latest()->get();
        return response()->json([
            'data' => AkunResource::collection($user),
            'message' => 'Fetch all posts',
            'success' => true
        ]);     
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama_lengkap' =>'required|string',
            'email' => 'required|string|email',
            'no_hp' => 'required',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'data' => [],
                'message' => $validator->errors(),
                'success' => false
            ]);
        }

        $user = Akun::create([
            'nama_lengkap' => $request->get('nama_lengkap'),
            'email' => $request->get('email'),
            'no_hp' => $request->get('no_hp'),
            'password' => $request->get('password')
        ]);

        return response()->json([
            'data' => new AkunResource($user),
            'message' => 'Post created successfully.',
            'success' => true
        ]);
    }

    public function show(Akun $akun)
    {
        //
    }

    public function edit(Akun $akun)
    {
        //
    }

    public function update(Request $request, Akun $akun)
    {
        //
    }

    public function destroy(Akun $akun)
    {
        //
    }
}
