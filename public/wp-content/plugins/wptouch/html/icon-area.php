<?php require_once( dirname(__FILE__) . '/../include/icons.php' ); ?>
<?php global $wptouch_settings; ?>
<script type="text/javascript">
jQuery(document).ready(function(jQuery) {
var button = jQuery('#upload-icon'), interval;
	new AjaxUpload(button, {
		action: '<?php bloginfo( 'wpurl' ); ?>/?wptouch=upload',
		autoSubmit: true,
		name: 'submitted_file',
		onSubmit: function(file, extension) { jQuery("#upload_progress").show(); },
		onComplete: function(file, response) { 
		jQuery("#upload_progress").hide();
		jQuery('#upload_response').hide().html(response).fadeIn(); 
		jQuery('#icon-pool-area').load('<?php echo admin_url( 'options-general.php?page=wptouch/wptouch.php' ); ?> #wptouchicons');	
		}
	});
});
</script>
<div class="metabox-holder" id="available_icons">
	<div class="postbox">
		<h3><span class="icon-options">&nbsp;</span><?php _e( "Default &amp; Custom Icon Pool", "wptouch" ); ?></h3>

			<div class="left-content">
				<h4><?php _e( "Adding Icons", "wptouch" ); ?></h4>
				<p><?php _e( "To add icons to the pool, simply upload a .png, .jpeg or .gif image from your computer.", "wptouch" ); ?></p>

				<h4><?php _e( "Logo/Bookmark Icons", "wptouch" ); ?></h4>
				<p><?php _e( "If you're adding a logo icon, the best dimensions for it are 57x57px (png) when used as a bookmark icon.", "wptouch" ); ?></p>
				<p><?php echo sprintf( __( "Need help? You can use %sthis easy online icon generator%s to make one.", "wptouch"), "<a href='http://www.flavorstudios.com/iphone-icon-generator' target='_blank'>", "</a>" ); ?></p>
				<p><?php echo sprintf( __( "These files will be stored in the<br />%s%s/uploads/wptouch/custom-icons%s<br />folder we create.", "wptouch"), "<strong>", '' . compat_get_wp_content_dir( 'wptouch' ). '', "</strong>" ); ?></p>
				<p><?php echo sprintf( __( "If an upload fails (usually it's a permission problem) check your wp-content path settings in WordPress' Miscellaneous Settings, or create the folder yourself using FTP and try again.", "wptouch"), "<strong>", "</strong>" ); ?></p>
						
				<input id="upload-icon" type="submit" class="button" name="upload-icon" value="<?php _e('Upload Icon', 'wptouch' ); ?>"></input>

			<div id="upload_response"></div>
				<div id="upload_progress" style="display:none">
					<p><img src="<?php echo compat_get_plugin_url( 'wptouch' ) . '/images/progress.gif'; ?>" alt="" /> <?php _e( "Uploading..."); ?></p>
				</div>
								
			</div><!-- left-content -->

	<div class="right-content" id="icon-pool-area">	
	<div id="wptouchicons">
		<?php bnc_show_icons(); ?>
	</div>
	</div>
	
	<div class="bnc-clearer"></div>
	</div><!-- postbox -->
</div><!-- metabox -->