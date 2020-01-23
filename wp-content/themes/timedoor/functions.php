<?php

    if ( function_exists('register_sidebar') )
    register_sidebar(array(
        'name'          => 'Mailchimp',
		'id'            => 'sidebar-1',
		'description'   => 'Add widgets here.',
		'before_widget' => '<div>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
    )
	);
	
	if ( function_exists('register_sidebar') )
    register_sidebar(array(
        'name'          => 'Contact',
		'id'            => 'sidebar-2',
		'description'   => 'Add widgets here.',
		'before_widget' => '<div>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
    )
    );


?>