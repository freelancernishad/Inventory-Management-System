<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="card shadow-sm my-5">
				<div class="card-body p-0">
					<div class="row">
						<div class="col-lg-12">
							<router-link to="/customer" class="btn btn-primary float-right" style="margin-top: 6px;margin-right: 6px;">All Customer</router-link>
							<div class="login-form">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4">Edit Customer</h1>
								</div>
								<form @submit.prevent='updateCustomer' enctype="multipart/form-data">
									<div class="form-group">
										<div class="form-row">
											<div class="col-md-6">
												<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Your Full Name" v-model="form.name">
												<small class="text-danger" v-if="errors.name"> {{ errors.name[0] }} </small>
											</div>
											<div class="col-md-6">
		<!-- <input type="hidden" class="form-control" id="exampleInputEmail" placeholder="Enter Email" v-model='form.email' > -->

                                                <select v-model='form.email' class="form-control" >
                                <option value="Local">খুচরা</option>
                                <option value="Wholesell">পাইকারি</option>
                                                </select>

												<small class="text-danger" v-if="errors.email">{{ errors.email[0] }}</small>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="form-row">
											<div class="col-md-6">
												<input type="text" class="form-control" id="exampleInputPhone" placeholder="Enter Phone Number" v-model='form.phone'>
												<small class="text-danger" v-if="errors.phone">{{ errors.phone[0] }}</small>
											</div>
											<div class="col-md-6">
												<input type="text" class="form-control" id="exampleInputAddress" placeholder="Enter Full Address" v-model='form.address'>
												<small class="text-danger" v-if="errors.address">{{ errors.address[0] }}</small>
											</div>
										</div>
									</div>
									<!-- <div class="form-group">
										<div class="form-row">
											<div class="col-md-6">
												<div class="custom-file" style="margin-top: 16px;">
													<input type="file" class="custom-file-input" id="customFile" @change="onFileSelected">
													<label class="custom-file-label" for="customFile">Choose file</label>
												</div>
											</div>
											<div class="col-md-6">
												<img :src="form.photo" style="width: 146px">
											</div>
										</div>
									</div> -->

									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-block">Update</button>
									</div>
								</form>
								<div class="text-center">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
export default {

	created(){
		if (!User.loggedIn()) {
			this.$router.push({name: '/'})
		}
	},

	data () {
		return {
			form:{
				name: '',
				email: 'Local',
				phone: '',
				address: '',
				photo: '',
				newPhoto: ''
			},
			errors: {}
		}
	},
	mounted(){
		let id = this.$route.params.id
		axios.get('/api/customer/' + id)
			 .then(({data}) => (this.form = data))
			 .catch(console.log('error'))
	},
	methods:{
		onFileSelected(event){
			let file = event.target.files[0];
			if (file.size > 1048576) {
				Notification.image_validation();
			} else {
				let reader = new FileReader;
				reader.onload = event => {
					this.form.newPhoto = event.target.result
					console.log(this.form.newPhoto)
				};
				reader.readAsDataURL(file)
			}
		},
		updateCustomer(){
			let id = this.$route.params.id
			axios.patch('/api/customer/' + id, this.form)
			.then(() => {
				this.$router.push({name: 'customer'})
				Notification.success()
			})
			.catch(error => this.errors = error.response.data.errors)
		}
	}
}
</script>

<style lang="css" scoped>
</style>
