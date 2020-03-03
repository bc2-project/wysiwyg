<?php
$FORMS = array(
    'options' => array(
        array(
            'type' => 'hidden',
            'name' => 'section_id',
        ),
        array(
            'type' => 'hidden',
            'name' => 'page_id',
        ),
        // list of options to save
        array(
            'type'     => 'hidden',
            'name'     => 'options',
            'value'    => 'columns,heading_text,heading_secondary',
        ),
        array(
            'type'     => 'radio',
            'label'    => 'Columns per row',
            'name'     => 'columns',
            'options'  => array_merge(array(0=>'auto'),range(1,6)),
            'value'    => 3,
        ),
        array(
            'type'     => 'text',
            'label'    => 'Optional overall heading',
            'name'     => 'heading_text',
            'helptext' => 'Places a heading on top of the content.',
        ),
        array(
            'type'     => 'textarea',
            'label'    => 'Optional secondary heading',
            'name'     => 'heading_secondary',
            'helptext' => 'Places smaller text after the overall heading text',
        ),
        array(
            'type'     => 'button',
            'name'     => 'submit',
            'name'     => 'submit',
            'label'    => 'Submit',
            'class'    => 'btn btn-primary',
        ),
        array(
            'type'     => 'button',
            'name'     => 'cancel',
            'label'    => 'Cancel & close',
            'class'    => 'btn btn-secondary',
        ),
    )
);