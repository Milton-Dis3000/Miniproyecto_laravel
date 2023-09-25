<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Alumno extends Model
{
    protected $table = "alumnos";
    use HasFactory;
    public function matriculas(): HasMany
    {
        return $this->hasMany(Matricula::class, 'id_alumno');
    }
}
