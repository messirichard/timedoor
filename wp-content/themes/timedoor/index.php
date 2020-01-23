<!DOCTYPE html>
 <html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo('charset'); ?>" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>   
        <link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(). '/style.css' ?>">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <title><?php bloginfo('name'); ?></title>
        <?php wp_head(); ?>
    </head>

    <?php get_header(); ?>
    <body <?php body_class(); ?> >

    
    <section class="home-sec-1">
        <div class="prelative container">
            <div class="row">
                <div class="col-md-6">
                    <div class="content-inner1">
                        <div class="content-inner2">
                            <h3><?php the_field('title'); ?></h3>
                            <p class="pt-2 mt-1"><?php the_field('content'); ?></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <?php if ( get_field( 'picture') ) { ?>
                        <img src="<?php the_field( 'picture' ); ?>" />
                    <?php } ?>
                </div>
            </div>
        </div>
    </section>


    <section class="home-sec-2 py-3">
        <div class="prelative container">
            <?php 
                $args = array(
                    'post_type' => 'portfolio',
                    'posts_per_page' => 6
                );
                $the_query = new WP_Query( $args ); 
            ?>
            <div class="row">
                <div class="col-md-12">
                    <div class="title-sec mt-2 pt-4">
                        <p>Our Website Portfolio</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php if ( $the_query->have_posts() ) : ?>
                    <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                <div class="col-md-4 my-3">
                    <div class="box-content">
                        <?php if ( get_field( 'picture_portofolio') ) { ?>
                            <img class="w-100" src="<?php the_field( 'picture_portofolio' ); ?>" />
                        <?php } ?>
                        <div class="inner p-3">
                            <h4><?php the_field( 'title_portofolio' ); ?></h4>
                            <p><?php the_field( 'content_portofolio' ); ?></p>    
                        </div>
                    </div>
                </div>
                <?php endwhile; ?>
                <?php wp_reset_postdata(); ?>
                <?php else : ?>
                    <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
                <?php endif; ?>
            </div>
        </div>
    </section>

    <section class="home-sec-3 py-3">
        <div class="prelative container">
            <?php 
                $args = array(
                    'post_type' => 'post',
                    'posts_per_page' => 6
                );
                $the_query = new WP_Query( $args ); 
            ?>
            <div class="row">
                <div class="col-md-12">
                    <div class="title-sec mt-2 pt-4">
                        <p>Our Blog</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php if ( $the_query->have_posts() ) : ?>
                    <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                <div class="col-md-4 my-3">
                    <div class="box-content">
                        <?php if ( get_field( 'picture_blog') ) { ?>
                            <img class="w-100" src="<?php the_field( 'picture_blog' ); ?>" />
                        <?php } ?>
                        <div class="inner p-3">
                            <h4><?php the_field( 'title_blog' ); ?></h4>
                            <div class="date">
                                <i class="far fa-calendar-alt"></i><p><?php echo get_the_date(); ?></p>
                            </div>
                            <p><?php the_field( 'content_blog' ); ?></p>    
                        </div>
                    </div>
                </div>
                <?php endwhile; ?>
                <?php wp_reset_postdata(); ?>
                <?php else : ?>
                    <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
                <?php endif; ?>
            </div>
        </div>
    </section>
    <?php get_footer(); ?>
    </body>
</html>

