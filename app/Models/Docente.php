<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Docente extends Model
{
    use HasFactory;

    protected $table = "docentes";
    use HasFactory;
  
    public function asistencias(): HasMany
    {
        return $this->hasMany(Asistencia::class, 'id_docente');
        return $this->hasMany(Matricula::class, 'id_alumno');
    }
}