<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Models\Program;
use App\Http\Resources\ProgramResource;

class ProgramController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Program::latest()->get();
        return response()->json([ProgramResource::collection($data), 'Programs fetched.']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'judul' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'category_id' => 'required',
            'image' => 'image|file|max:19824',
            'body' => 'required'
        ]);

        if($request->file('image')){
            $validator['image'] = $request->file('image')->store('post-images');
        }
        $validator['user_id']= auth()->user()->id;
        $validator['excerpt']= Str::limit(strip_tags($request->body), 200);

        if($validator->fails()){
            return response()->json($validator->errors());
        }

        Program::create($validator);

        return response()->json(['Program created successfully.', new ProgramResource($validator)]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $program = Program::find($id);
        if (is_null($program)) {
            return response()->json('Data not found', 404);
        }
        return response()->json([new ProgramResource($program)]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Program $program)
    {
        $validator = Validator::make($request->all(),[
            'judul' => 'required|max:255',
            'category_id' => 'required',
            'image' => 'image|file|max:19824',
            'body' => 'required'
        ]);

        if($request->slug != $post->slug){
            $validator['slug'] ='required|unique:posts';
        }

        $validatedData = $request->validate($validator);

        if($request->file('image')){
            if($request->oldImage){
                Storage::delete($request->oldImage);
            }
            $validatedData['image'] = $request->file('image')->store('post-images');
        }

        $validatedData['user_id']= auth()->user()->id;
        $validatedData['excerpt']= Str::limit(strip_tags($request->body), 200);

        if($validator->fails()){
            return response()->json($validator->errors());
        }

        Post::where('id', $post->id)->update($validatedData);

        return response()->json(['Program updated successfully.', new ProgramResource($program)]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Program $program)
    {
        $program->delete();

        return response()->json('Program deleted successfully');
    }
}
