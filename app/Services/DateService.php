<?php

namespace App\Services;

use Carbon\Carbon;

class DateService
{
    /**
     * Format due dates in the given array of dues.
     *
     * @param  array  $dues
     * @param  string  $format
     * @param  bool  $includeTime
     * @return array
     */
    public static function formatDueDates($dues, $format = 'd M, Y h:i A')
    {
        foreach ($dues as $due) {
            $due->date = self::formatDueDate($due->due_date, $format);
        }
        return $dues;
    }

    /**
     * Format a single due date and convert AM/PM time to Bengali text.
     *
     * @param  \Carbon\Carbon  $dueDate
     * @param  string  $format
     * @return string
     */
    public static function formatDueDate(Carbon $dueDate, $format = 'd M, Y h:i A')
    {
        // Format the date with provided format
        $formattedDate = $dueDate->format($format);

        // Convert AM/PM time to Bengali
        $formattedDate = self::convertTimeToBengali($dueDate);
        $formattedDate = int_en_to_bn(month_name_en_to_bn_text($formattedDate));
        // Optionally, perform additional formatting


        return $formattedDate;
    }

    public static function convertTimeToBengali($time)
    {
        $hour =  Carbon::parse($time)->format('H');
        // $hour = $time->format('H');

        // Convert hour to integer for comparison
        $hourInt = intval($hour);

        if ($hourInt >= 0 && $hourInt < 6) {
            $amPm= 'রাত'; // Night
        } elseif ($hourInt >= 6 && $hourInt < 12) {
            $amPm= 'সকাল'; // Morning
        } elseif ($hourInt >= 12 && $hourInt < 18) {
            $amPm= 'দুপুর'; // Afternoon
        } elseif ($hourInt >= 18 && $hourInt <= 23) {
            $amPm= 'বিকাল'; // Evening
        } else {
            $amPm= ''; // Default case
        }

        $formattedDate =  Carbon::parse($time)->format('d M, Y');
        $formattedtime =  Carbon::parse($time)->format('h:i');


        $dateTime = $formattedDate.' '.$amPm.' '.$formattedtime;

        return $dateTime;
    }


}
