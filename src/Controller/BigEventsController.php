<?php

namespace App\Controller;

use App\Entity\BigEvents;
use App\Form\BigEventsType;
use App\Repository\BigEventsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\components;
use Doctrine\Persistence\ManagerRegistry;

#[Route('/big/events')]
class BigEventsController extends AbstractController
{
    #[Route('/', name: 'app_big_events_index', methods: ['GET'])]
    public function index(BigEventsRepository $bigEventsRepository): Response
    {
        return $this->render('big_events/index.html.twig', [
            'big_events' => $bigEventsRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_big_events_new', methods: ['GET', 'POST'])]
    public function new(Request $request, BigEventsRepository $bigEventsRepository): Response
    {
        $bigEvent = new BigEvents();
        $form = $this->createForm(BigEventsType::class, $bigEvent);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $bigEventsRepository->save($bigEvent, true);

            return $this->redirectToRoute('app_big_events_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('big_events/new.html.twig', [
            'big_event' => $bigEvent,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_big_events_show', methods: ['GET'])]
    public function show(BigEvents $bigEvent): Response
    {
        return $this->render('big_events/show.html.twig', [
            'big_event' => $bigEvent,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_big_events_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, BigEvents $bigEvent, BigEventsRepository $bigEventsRepository): Response
    {
        $form = $this->createForm(BigEventsType::class, $bigEvent);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $bigEventsRepository->save($bigEvent, true);

            return $this->redirectToRoute('app_big_events_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('big_events/edit.html.twig', [
            'big_event' => $bigEvent,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_big_events_delete', methods: ['POST'])]
    public function delete(Request $request, BigEvents $bigEvent, BigEventsRepository $bigEventsRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$bigEvent->getId(), $request->request->get('_token'))) {
            $bigEventsRepository->remove($bigEvent, true);
        }

        return $this->redirectToRoute('app_big_events_index', [], Response::HTTP_SEE_OTHER);
    }
    
}
