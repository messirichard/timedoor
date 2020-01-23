<?php
/*
Template Name: Portfolio
*/
?>

<?php wp_head(); ?>
<?php the_field( 'title_portofolio' ); ?>
<?php the_field( 'content_portofolio' ); ?>
<?php if ( get_field( 'picture_portofolio') ) { ?>
	<img src="<?php the_field( 'picture_portofolio' ); ?>" />
<?php } ?>