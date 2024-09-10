<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;

class Book extends Model
{
    use HasFactory;

    public function author(){
        return $this->belongsTo(Author::class);
    }

    public function publisher(){
        return $this->belongsTo(Publisher::class);
    }

    public function translator(){
        return $this->belongsTo(Translator::class);
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }

    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

}
