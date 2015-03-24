<div class="list-group">
<?php 
	foreach($courses_arr as $course)
	{	
		echo '	
			<div class="course_cat_listing">
				<div class="row">
					<div class="col-lg-11 course-info-listing">
						<a href="'.base_url('courses/details/'.$course['course_slug']).'">
							<h3 class="list-course-title">'.$course['course_title'].'</h3>
						</a>
					</div>
					<div class="col-lg-1 list-course-info-btn">
						<a id="'.$course['id'].'" href="#" onclick="toggleListInfo(this.id);return false;">
							<span class="glyphicon glyphicon-info-sign"></span>
						</a>
					</div>
				</div>



				<div id="list-info-'.$course['id'].'" class="row course_info_extra">
					<div class="col-lg-2 col-md-4 col-sm-4 col-xs-6 course-info-listing">
						<strong>'.$this->lang->line('courseField_teacher').':</strong><br/>
						<a href="#" class="btn btn-default btn-xs">
							'.$course['course_teacher_info']['user_username'].'
						</a>
					</div>					
					
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6  course-info-listing">
						<strong>'.$this->lang->line('courseField_category').': </strong><br/>
						<a href="'.base_url().'courses/category/'.$course['course_category_info']['cat_slug'].'" class="btn btn-primary	 btn-xs">
							'.$this->lang->line('cat_'.$course['course_category_info']['cat_slug']).'
						</a>
					</div>

					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6  course-info-listing">
						<strong>'.$this->lang->line('courseField_teacher').': </strong><br/>
						<a href="'.base_url().'courses/category/'.$course['course_category_info']['cat_slug'].'/'.$course['course_subcat_info']['subcat_slug'].'" class="btn btn-default btn-subcat btn-xs">
							'.$this->lang->line('subcat_'.$course['course_subcat_info']['subcat_slug']).'
						</a>
					</div>

					<div class="col-lg-2 col-md-4 col-sm-4 col-xs-6  course-info-listing">
						<strong>'.$this->lang->line('courseField_length').':</strong><br/>
						<span class="btn btn-default btn-xs" disabled="disabled">
							'.$course['course_time']['hh'].':'.$course['course_time']['mm'].' 
						</span>
					</div>
					
					<div class="col-lg-2 col-md-4 col-sm-4 col-xs-6  course-info-listing">
						<strong>'.$this->lang->line('courseField_enrollment').':</strong><br/>';
						switch($course['enrollment_status'])
						{
							case 0:
								echo '
									<a href="'.base_url('courses/details/'.$course['course_slug']).'" class="btn btn-warning btn-xs">
										'.$this->lang->line('courseField_inactive').'
									</a>
								';
								break;
							case 1:
								echo '
									<a href="'.base_url('courses/details/'.$course['course_slug']).'" class="btn btn-success btn-xs">
										'.$this->lang->line('courseField_active').'
									</a>
								';
								break;
							case 2:
								echo '
									<a href="'.base_url('courses/details/'.$course['course_slug']).'" class="btn btn-default btn-xs">
										'.$this->lang->line('courseField_paused').'
									</a>
								';
								break;
						}

			echo '	
					</div>
				</div>




				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">';
								$course_image = base_url('images/course_default.png');
								if(isset($course['course_image']) && $course['course_image'] != '')
								{
									$course_image = base_url('uploads/course_imgs/'.$course['course_image']);
								}
								echo '
								<a href="'.base_url('courses/details/'.$course['course_slug']).'" class="course-image-link">
									<img src="'.$course_image.'" width="350px" height="300px" align="left" class="img-responsive course_listing_img">
								</a>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
								<p><strong>'.$this->lang->line('courseField_summary').':</strong> '.substr($course['course_description'],0,350).'...
									<a href="'.base_url('courses/details/'.$course['course_slug']).'">
									  '.$this->lang->line('courseField_read_more').'
									</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>';
	}
?>
</div>
