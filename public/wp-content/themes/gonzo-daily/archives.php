<?php
/*
Template Name: Archives
*/
?>

<?php get_header(); ?>

		<div id="content" class="single">
			
			<div class="post">
				<h2>Етикети</h2>
				
				<p class="tag-cloud">
				<?php wp_tag_cloud('smallest=1&largest=4&unit=em'); ?>
				</p>

			</div>

			<div class="post column left">

			<?php /* include (TEMPLATEPATH . '/searchform.php');*/ ?>

			<h2>Архив по месеци</h2>
			<ul>
				<?php wp_get_archives('type=monthly'); ?>
			</ul>
			</div>
	
			<div class="post column right">

			<h2>Архив по категории</h2>
			<ul>
				 <?php wp_list_categories('title_li='); ?>
			</ul>
			</div>

		</div>

<?php get_footer(); ?>
