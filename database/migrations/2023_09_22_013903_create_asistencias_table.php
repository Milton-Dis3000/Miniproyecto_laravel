<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('asistencias', function (Blueprint $table) {
            $table->id();
            $table->char('asistio_temprano', 1)->default('A');
            $table->char('asistio_tarde', 1)->default('T');
            $table->char('falto', 1)->default('F');
            $table->foreignId('id_docente')->constrained(table: 'docentes')->onUpdate('cascade')->onDelete('cascade');
            $table->foreignId('id_alumno')->constrained(table: 'alumnos')->onUpdate('cascade')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('asistencias');
    }
};
