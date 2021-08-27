<?php
// Template Name: Contato
?>
<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
		<section class="container contato">
			<h2 class="subtitulo"><?php the_title(); ?></h2>

			<div class="grid-16">
				<a href="<?php the_field('link_mapa'); ?>" target="_blank"><img src="<?php the_field('foto_maps_rest'); ?>" alt="Mapa da localização do Rest"></a>
			</div>

			<?php if(have_rows('informacao_contato')): while(have_rows('informacao_contato')) : the_row(); ?>
			<div class="grid-1-3 contato-item">
				<h2><?php the_sub_field('titulo_contato'); ?></h2>
				<?php if(have_rows('dados_contato')): while(have_rows('dados_contato')) : the_row(); ?>
					<p><?php the_sub_field('dado_contato'); ?></p>
				<?php endwhile; else : endif; ?>
			</div>
			<?php endwhile; else : endif; ?>
		</section>
<?php endwhile; else: endif; ?>

<?php get_footer(); ?>