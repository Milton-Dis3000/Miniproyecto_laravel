<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Asistencia extends Model
{
    protected $fillable = ['asistio_temprano', 'asistio_tarde', 'falto', 'id_alumno', 'id_docente'];

    use HasFactory;


    public function alumno()
    {
        return $this->belongsTo(Alumno::class);
    }
}
