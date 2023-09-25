<?php

namespace App\Http\Controllers;

use App\Models\Alumno;
use Illuminate\Http\Request;

class AlumnoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $alumno = new Alumno();
        return $alumno->all();
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
        $alumno = new Alumno();
        $alumno->nombres = $request->nombres;
        $alumno->apellidos = $request->apellidos;
        $alumno->direccion = $request->direccion;
        $alumno->email = $request->email;
        $alumno->telefono = $request->telefono;
        $alumno->edad = $request->edad;
        $alumno->save();
        return $alumno;
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $alumno = new Alumno();
        return $alumno->find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, Request $request)
    {
        $alumno = new Alumno();
        $alumno = Alumno::find($id);
        $alumno->nombres = $request->nombres;
        $alumno->apellidos = $request->apellidos;
        $alumno->direccion = $request->direccion;
        $alumno->email = $request->email;
        $alumno->telefono = $request->telefono;
        $alumno->edad = $request->edad;
        $alumno->save();
        return $alumno;
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Alumno $alumno)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $alumno = Alumno::find($id);
        $alumno->delete();
        return $alumno;
    }



    public function matricula(string $id)

    {
        $alumno = Alumno::find($id);
        $alumno->matriculas;
        return $alumno;
   
    }

}



