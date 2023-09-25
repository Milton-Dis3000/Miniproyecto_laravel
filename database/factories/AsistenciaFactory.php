<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Asistencia>
 */
class AsistenciaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'asistio_temprano' => fake()->randomElement(['A', '', '']),
            'asistio_tarde' => fake()->randomElement(['T', '', '']),
            'falto' => fake()->randomElement(['F', '', '']),
            'id_docente' => rand(1, 10),
            'id_alumno' => rand(1, 10),
        ];
    }
}
