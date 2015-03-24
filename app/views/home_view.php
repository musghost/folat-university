<div class="row">
	<?php $this->load->view('templates/flash_messages');?>
	<div class="col-md-5 text-justify animated fadeInUp">
		<h2><?php echo $this->lang->line('home_title_WhatIs');?></h2>
		<?php echo $this->lang->line('home_text_WhatIs');?>
		
		<p class="text-center">
			<?php echo anchor(base_url('account/register'),$this->lang->line('home_btn_registerNow'), array('class' => 'btn btn-primary btn-lg'));?>
		</p>
	</div>
	<div class="col-md-7 animated fadeInUp">
		<h2><?php echo $this->lang->line('home_title_FeaturedCourses');?></h2>
		<?php 
			$data = array(
				'courses_arr' => $courses_arr,
				'cl_page' => 'home_featured',
			);
			$this->load->view('templates/course_list.php',$data);
		?>
	</div>
</div>