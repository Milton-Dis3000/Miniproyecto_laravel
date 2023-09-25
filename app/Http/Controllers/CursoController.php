<?php


namespace App\Http\Controllers;

use App\Models\Curso;
use Illuminate\Http\Request;

class CursoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $curso = new Curso();
        return $curso->all();
    }
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $curso = new Curso();
        $curso->nombre_curso = $request->nombre_curso;
        $curso->descripcion = $request->descripcion;
        $curso->save();
        return $curso;
    }
    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $curso = new Curso();
        return $curso->find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, Request $request)
    {
        $curso = new Curso();
        $curso = Curso::find($id);
        $curso->nombre_curso = $request->nombre_curso;
        $curso->descripcion = $request->descripcion;
        $curso->save();
        return $curso;
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, curso $curso)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $curso = Curso::find($id);
        $curso->delete();
        return $curso;
    }
}
