<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="card shadow-sm my-5">
				<div class="card-body p-0">
					<div class="row">
						<div class="col-lg-12">
							<router-link to="/product" class="btn btn-primary float-right" style="margin-top: 6px;margin-right: 6px;">All Product</router-link>
							<div class="login-form">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4">Add Product</h1>
								</div>
								<form @submit.prevent='storeProduct' enctype="multipart/form-data">
									<div class="form-group">
										<div class="form-row">
											<div class="col-md-6">
												<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Product Name" v-model="form.product_name">
												<small class="text-danger" v-if="errors.product_name"> {{ errors.product_name[0] }} </small>
											</div>
											<div class="col-md-6">
												<input type="number" class="form-control" id="exampleInputEmail" placeholder="Enter Product Code" v-model='form.product_code' readonly>
												<small class="text-danger" v-if="errors.product_code">{{ errors.product_code[0] }}</small>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="form-row">
											<div class="col-md-6">
												<label for="exampleFormControlSelect1">Seletct Category</label>
												<select class="form-control" id="exampleFormControlSelect1" v-model="form.category_id">
													<option v-for="category in categories" :value="category.id">{{ category.category_name }}</option>
												</select>
											</div>
											<!-- <div class="col-md-6">
												<label for="exampleFormControlSelect2">Seletct Supplier</label>
												<select class="form-control" id="exampleFormControlSelect2" v-model="form.supplier_id">
													<option v-for="supplier in suppliers" :value="supplier.id">{{ supplier.name }}</option>
												</select>
											</div> -->
                                            <div class="col-md-6">
                                                <label for="exampleFormControlSelect1">Group</label>
												<input type="text" class="form-control" id="exampleInputPhone" placeholder="Enter Group" v-model='form.root'>
												<small class="text-danger" v-if="errors.root">{{ errors.root[0] }}</small>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="form-row">

											<div class="col-md-6">
												<input type="tel" class="form-control" id="exampleInputSalary" placeholder="Enter Buying Price" v-model='form.buying_price'>
												<small class="text-danger" v-if="errors.buying_price">{{ errors.buying_price[0] }}</small>
											</div>
											<div class="col-md-6">
												<input type="tel" class="form-control" id="exampleInputSalary" placeholder="Enter Selling Price" v-model='form.selling_price'>
												<small class="text-danger" v-if="errors.selling_price">{{ errors.selling_price[0] }}</small>
											</div>
										</div>
									</div>



									<div class="form-group">
										<div class="form-row">
											<div class="col-md-6">
                                                <label for="">Buying Date</label>
												<input type="date" class="form-control" id="exampleInputAddress" placeholder="Enter Buying Date" v-model='form.buying_date'>
												<small class="text-danger" v-if="errors.buying_date">{{ errors.buying_date[0] }}</small>
											</div>

											<div class="col-md-6">
                                                <label for="">Expired Date</label>
												<input type="date" class="form-control" id="exampleInputAddress" placeholder="Enter Buying Date" v-model='form.expired_date'>
												<small class="text-danger" v-if="errors.expired_date">{{ errors.expired_date[0] }}</small>
											</div>

										</div>
									</div>


									<div class="form-group">
										<div class="form-row">


											<div class="col-md-6">
												<label for="exampleFormControlSelect1">Select Product Type</label>
												<select class="form-control" id="exampleFormControlSelect1" v-model="form.productType" required>
													<option value="normal">Normal</option>
													<option value="custom">Custom</option>
												</select>
											</div>

											<div class="col-md-6" v-if="form.productType=='normal'">
                                                 <label for="">Product Quantity</label>
												<input type="tel" class="form-control" id="exampleInputNid" placeholder="Enter Product Quantity" v-model='form.product_quantity'>
												<small class="text-danger" v-if="errors.product_quantity">{{ errors.product_quantity[0] }}</small>
											</div>

											<div class="col-md-6" v-else-if="form.productType=='custom'">
                                                 <label for="">Product Weight (কেজি)</label>
												<input type="tel" class="form-control" id="exampleInputNid" placeholder="Enter Product Weight (কেজি)" v-model='form.product_quantity'>
												<small class="text-danger" v-if="errors.product_quantity">{{ errors.product_quantity[0] }}</small>
											</div>

										</div>
									</div>



									<!-- <div class="form-group">
										<div class="form-row">
											<div class="col-md-6">
												<div class="custom-file">
													<input type="file" class="custom-file-input" id="customFile" @change="onFileSelected">
													<label class="custom-file-label" for="customFile">Choose file</label>
												</div>
											</div>
											<div class="col-md-6">
												<img :src="form.image" style="width: 146px">
											</div>
										</div>
									</div> -->

									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-block">Submit</button>
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
				category_id: null,
				supplier_id: 1,
				product_name: null,
				product_code: null,
				root: null,
				buying_price: null,
				selling_price: null,
				buying_date: null,
				expired_date: null,
				productType: 'normal',
				product_quantity: null,
				image: null,
			},
			errors: {},
			categories: {},
			suppliers: {}
		}
	},

	methods:{
		onFileSelected(event){
			let file = event.target.files[0];
			if (file.size > 5048576) {
				Notification.image_validation();
			} else {
				let reader = new FileReader;
				reader.onload = event => {
					this.form.image = event.target.result
					console.log(event.target.result);
				};
				reader.readAsDataURL(file)
			}
		},
		storeProduct(){
			axios.post('/api/product', this.form)
			.then(() => {
				this.$router.push({name: 'product'})
				Notification.success()
			})
			.catch(error => this.errors = error.response.data.errors)
		}
	},
	mounted(){
		axios.get('/api/category?type=all')
			 .then(({data}) => (this.categories = data))

		axios.get('/api/supplier')
			 .then(({data}) => (this.suppliers = data))

		axios.get('/api/products/code')
			 .then(({data}) => (this.form.product_code = data))
	}
}
</script>

<style lang="css" scoped>
</style>
