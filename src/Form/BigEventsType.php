<?php

namespace App\Form;

use App\Entity\BigEvents;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;


class BigEventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name',null,["attr"=>["class"=>"form-control m-3", "placeholder"=>"The Event's Name"]])
            ->add('date', null, ["attr" => ["class" => "form-select m-3"]])
            ->add('description', null, ["attr" => ["class" => "form-control m-3", "placeholder" => "The Description"]])
            ->add('capacity', null, ["attr" => ["class" => "form-control m-3"]])
            ->add('eMail', null, ["attr" => ["class" => "form-control m-3", "placeholder" => "name@example.com"]])
            ->add('phone', null, ["attr" => ["class" => "form-control m-3"]])
            ->add('street', null, ["attr" => ["class" => "form-control m-3", "placeholder" => "The Adress/street name"]])
            ->add('zipCode', null, ["attr" => ["class" => "form-control m-3"]])
            ->add('cityName', null, ["attr" => ["class" => "form-control m-3", "placeholder" => "City"]])
            ->add('type', null, ["attr" => ["class" => "form-control m-3"]])
            ->add('startTime')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => BigEvents::class,
        ]);
    }
}
