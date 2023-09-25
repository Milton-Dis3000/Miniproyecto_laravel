<?php

namespace App\Http\Controllers;

use App\Models\Docente;
use App\Models\Asistencia;
use Illuminate\Http\Request;

class DocenteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $docente = new Docente();
        return $docente->all();
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
        $docente = new Docente();
        $docente->nombres = $request->input('nombres');
        $docente->apellidos = $request->input('apellidos');
        $docente->direccion = $request->input('direccion');
        $docente->email = $request->input('email');
        $docente->telefono = $request->input('telefono');
        $docente->edad = $request->input('edad');

        $docente->save();

        return "Guardado Correcto";
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)

    {
        $docente = Docente::find($id);
        $docente->asistencias;
        return $docente;
    }


    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, Request $request)
    {
        $docente = new Docente();
        $docente = Docente::find($id);
        $docente->nombres = $request->nombres;
        $docente->apellidos = $request->apellidos;
        $docente->direccion = $request->direccion;
        $docente->email = $request->email;
        $docente->telefono = $request->telefono;
        $docente->edad = $request->edad;

        $docente->save();

        return $docente;
    }

    /**
     * Update the specified resource in storage.
     */
    public function update()
    {
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $docente = Docente::find($id);
        $docente->delete();
        return $docente;
    }

    public function asistencia(Request $request, $id)
{
    $docente = Docente::find($id);

    if (!$docente) {
        return response()->json(['message' => 'Docente no encontrado'], 404);
    }

    // Verificamos que solo un campo de asistencia esté lleno
    $asistenciaData = [
        'asistio_temprano' => $request->input('asistio_temprano') ?: null,
        'asistio_tarde' => $request->input('asistio_tarde') ?: null,
        'falto' => $request->input('falto') ?: null,
        'id_alumno' => $request->input('id_alumno')
    ];

    $asistencia = new Asistencia($asistenciaData);

    $docente->asistencias()->save($asistencia);

    return response()->json(['message' => 'Asistencia registrada correctamente', 'asistencia' => $asistencia], 201);
}
}






