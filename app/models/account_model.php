<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Account_model extends CI_Model {
	public function __construct(){
		parent::__construct();
		session_start(); 
	}

	public function login($username, $password)
	{
	   $this -> db -> select('*');
	   $this -> db -> from('folat_users');
	   $this -> db -> where('user_username', $username);
	   $this -> db -> where('user_password', MD5($password));
	   $this -> db -> limit(1);
	   $query = $this -> db -> get();
	 
	   if($query -> num_rows() == 1)
	   {
	     return $query->result();
	   }
	   else
	   {
	     return false;
	   }
	}

	function insert_new_user(){
		$name = $this->db->escape($_POST['user_name']);
		$lastname = $this->db->escape($_POST['user_lastname']);
		$email = $this->db->escape($_POST['user_email']);
		$username = $this->db->escape($_POST['user_username']);
		$psw = $this->db->escape($_POST['user_password']);

		$sql = "INSERT INTO folat_users (user_name,user_lastname,user_email,user_username,user_password) 
				VALUES($name,$lastname,$email,$username,$psw)";
		$res = $this->db->query($sql);
		return $res;
	}

	
	public function build_user_data(){
		    $session_data = $this->session->userdata('logged_in');
		    $data['user_id'] = $session_data['user_id'];
		    $data['user_name'] = $session_data['user_name'];
		    $data['user_lastname'] = $session_data['user_lastname'];
		    $data['user_email'] = $session_data['user_email'];
		    $data['user_username'] = $session_data['user_username'];
		    $data['user_about'] = $session_data['user_about'];
		    $data['user_image'] = $session_data['user_image'];
			return $data;
	}

	public function check_username_avail($new_username, $user_id)
	{

	   $res =  $this->db->query("SELECT user_id FROM folat_users WHERE user_username = ".$this->db->escape($new_username)." AND user_id != ".$this->db->escape($user_id));
	   
	   if($res -> num_rows() > 0)
	   {
	     return false;
	   }
	   return true;
	}

	public function check_email_avail($new_email, $user_id)
	{
	   $res =  $this->db->query("SELECT user_id FROM folat_users WHERE user_email = ".$this->db->escape($new_email)." AND user_id != ".$this->db->escape($user_id));
	   if($res -> num_rows() > 0)
	   {
	     return false;
	   }
	   return true;
	}

	public function update_user($user_id){
		$name = $this->db->escape($_POST['user_name']);
		$lastname = $this->db->escape($_POST['user_lastname']);
		$email = $this->db->escape($_POST['user_email']);
		$username = $this->db->escape($_POST['user_username']);
		$about = $this->db->escape($_POST['user_about']);
		$image = $this->db->escape($_POST['user_image']);

		$sql = "UPDATE folat_users SET 
				user_name = $name,
				user_lastname = $lastname, 
				user_email = $email,
				user_username = $username,
				user_about = $about,
				user_image = $image 
				WHERE user_id = $user_id LIMIT 1";
		$res = $this->db->query($sql);
		return $res;
	}

	public function get_account_alerts($user_data)
	{
		$alerts = array();
		if($user_data['user_image'] == '')
		{
			$a_arr = array('link' => base_url('account/edit'), 'langKey'=> 'alerts_btn_uploadImage');
			array_push($alerts,$a_arr);	
		}
		if($user_data['user_about'] == '')
		{
			$a_arr = array('link' => base_url('account/edit'), 'langKey'=> 'alerts_btn_completeAboutMe');	
			array_push($alerts,$a_arr);	
		}
		if(count($user_data['courses_taking']) < 1)
		{
			$a_arr = array('link' => base_url('courses'), 'langKey'=> 'alerts_btn_signUpForCourse');
			array_push($alerts,$a_arr);	
		}
		if(count($user_data['courses_teaching']) < 1)
		{
			$a_arr = array('link' => base_url('courses/create'), 'langKey'=> 'alerts_btn_createYourOwn');
			array_push($alerts,$a_arr);	
		}
		return $alerts;
	}

	public function get_courses_taking($user_id){
		//array to hold course rows
		$enrolled_courses = array();

		//get all enrolled courses for this user
		$enrolled_courses_result = $this->db->query("SELECT course_id FROM folat_enrollment WHERE user_id = ".$user_id);
		if($enrolled_courses_result->num_rows() > 0)
		{
		   foreach ($enrolled_courses_result->result() as $row)
		   { 
			    $course_result = $this->db->query("SELECT * FROM folat_courses WHERE id = ".$row->course_id);
			    $course = $course_result->row_array();

			    //only add to enrolled courses if the course still exists(has not been deleted)
			    if($course)
			    {
			    	//ADD TEACHER INFO
			      	$query = $this->db->get_where('folat_users', array('user_id' => $course['course_teacher_id']));
					$teacher = $query->row_array();
					$course['course_teacher_info'] = $teacher;

					//ADD CATEGORY INFO
					$query = $this->db->get_where('folat_categories', array('id' => $course['course_category_id']));
					$category = $query->row_array();
					$course['course_category_info'] = $category;

					//ADD SUBCATEGORY INFO
					$query = $this->db->get_where('folat_subcategories', array('id' => $course['course_subcat_id']));
					$subcategory = $query->row_array();
					$course['course_subcat_info'] = $subcategory;
			      	
			      	//push the generated course data into the enrolled_courses array
			      	array_push($enrolled_courses, $course);
			    }
		   }
		} 
		return($enrolled_courses);
	}

	public function get_courses_teaching($user_id){
		//array to hold course rows
		$teaching_courses = array();

		//get all enrolled courses for this user
		$teaching_courses_result = $this->db->query("SELECT course_id FROM folat_instruct WHERE user_id = ".$user_id);
		if ($teaching_courses_result->num_rows() > 0)
		{
		   foreach ($teaching_courses_result->result() as $row)
		   { 
			    $course_result = $this->db->query("SELECT * FROM folat_courses WHERE id = ".$row->course_id);
			    $course = $course_result->row_array();

			    //ADD TEACHER INFO
		      	$query = $this->db->get_where('folat_users', array('user_id' => $course['course_teacher_id']));
				$teacher = $query->row_array();
				$course['course_teacher_info'] = $teacher;

				//ADD CATEGORY INFO
				$query = $this->db->get_where('folat_categories', array('id' => $course['course_category_id']));
				$category = $query->row_array();
				$course['course_category_info'] = $category;

				//ADD SUBCATEGORY INFO
				$query = $this->db->get_where('folat_subcategories', array('id' => $course['course_subcat_id']));
				$subcategory = $query->row_array();
				$course['course_subcat_info'] = $subcategory;

				//push the generated course data into the teaching_courses array
		      	array_push($teaching_courses, $course);
		   }
		} 
		return($teaching_courses);
	}
}