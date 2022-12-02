<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class NaveController extends AbstractController
{
    #[Route('/nave', name: 'app_nave')]
    public function index(): Response
    {
        return $this->render('nave/index.html.twig', [
            'controller_name' => 'NaveController',
        ]);
    }
}
