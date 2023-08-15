<?php

namespace App\Rules;

use Closure;
use Carbon\Carbon;
use Illuminate\Contracts\Validation\Rule;

class TimeBetween implements Rule
{
    /**
     * Run the validation rule.
     *
     * @param  \Closure(string): \Illuminate\Translation\PotentiallyTranslatedString  $fail
     */

    public function passes($attribute, $value){
        $pickupDate = Carbon::parse($value);
        $pickupTime= Carbon::createFromTime($pickupDate->hour, $pickupDate->minute, $pickupDate->second);
        //when the resturant is open
        $earliestTime=Carbon::createFromTimeString('17:00:00');
        $lastTime=Carbon::createFromTimeString('23:00:00');
        return $pickupTime->between($earliestTime,$lastTime) ? true : false;

    }
    public function message(){
        return 'please choose the time beetween 17:00-23:00';
    }
}
