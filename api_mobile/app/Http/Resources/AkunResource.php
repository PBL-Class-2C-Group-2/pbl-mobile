<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AkunResource extends JsonResource
{

    public function toArray($request)
    {
        return[
        'id' => $this->id,
        'nama_lengkap' => $this->nama_lengkap,
        'email' => $this->email,
        'no_hp' => $this->no_hp,
        'password' => $this->password,
        'created_at' => $this->created_at,
        'updated_at' => $this->updated_at,
        ];
    }
}
