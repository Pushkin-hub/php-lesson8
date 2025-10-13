<?php

namespace Lenovo\Lesson8;

class App
{
    public function __construct() {}

    public function run() {
        $response = [
            'question' => 'Какое дерево становится мокрым после дождя?',
            'answers' => [
                'Береза',
                'Елка',
                'Любое',
                'Дуб'
            ]
        ];
        echo json_encode($response);
    }
}