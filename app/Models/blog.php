<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
// use Laravel\Scout\Searchable;

class blog extends Model
{
    //public $timestamps = false;
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    // protected $primaryKey = 'kodeunik';

    
    protected $guarded = [];

}
