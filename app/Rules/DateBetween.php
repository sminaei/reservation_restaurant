<?php

namespace App\Rules;

use Closure;
use Carbon\Carbon;
use Illuminate\Contracts\Validation\Rule;

class DateBetween implements Rule
{
    /**
     * Run the validation rule.
     *
     * @param  \Closure(string): \Illuminate\Translation\PotentiallyTranslatedString  $fail
     */
    public function passes($attribute, $value)
    {

        $pickupDate= Carbon::parse($value);
        $lastDate= Carbon::now()->addWeek();
        return  $value >= now() && $value <= $lastDate;
    }





        // $lastDate= Carbon::now()->addWeek();
        // echo gettype($lastDate) . "<br>";
        // echo $lastDate . "<br>";
        // echo gettype($value) . "<br>";
        // die();
        // $value = strtotime($value);
        // $pickupDate = Carbon::parse($value); // تاریخ و زمان انتخابی
        // $lastDate= Carbon::now()->addWeek(); // تاریخ و زمان فعلی و یک هفته اضافه شده به آن

        // if ($value <= date("Y-m-d\TH:i") && $value >= $lastDate) {
        //     $fail($this->message()); // اجرای عملیات در صورتی که شرایط برقرار نباشد
        // }

    public function message(){
        return 'please choose the date beetween a week from now';
    }
}
