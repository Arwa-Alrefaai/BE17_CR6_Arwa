<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\BigEvents;
use Doctrine\Persistence\ManagerRegistry;

class FilterController extends AbstractController
{
    #[Route('/filme', name: 'filme_filter')]
    public function filmeEvents(ManagerRegistry $doctrine): Response
    {
        $event = $doctrine ->getRepository(BigEvents :: class)->findBy(['type' => 'filme']);
        return $this->render('filter/filme.html.twig', [
         "events" => $event
        ]);
    }
    #[Route('/music', name: 'music_filter')]
    public function musicEvents(ManagerRegistry $doctrine): Response
    {
        $event = $doctrine->getRepository(BigEvents::class)->findBy(['type' => 'music']);
        return $this->render('filter/music.html.twig', [
            "events" => $event
        ]);
    }
    #[Route('/sport', name: 'sport_filter')]
    public function sportEvents(ManagerRegistry $doctrine): Response
    {
        $event = $doctrine->getRepository(BigEvents::class)->findBy(['type' => 'sport']);
        return $this->render('filter/sport.html.twig', [
            "events" => $event
        ]);
    }
}
