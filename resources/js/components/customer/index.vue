<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="row">
				<div class="col-lg-12 mb-4">
					<!-- Simple Tables -->
					<div class="card">





						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

							<h2 class="m-0 font-weight-bold text-primary">Customer List</h2>

                     <div class="form-group" style="width: 250px;    margin: 0 !important;">

                            <select v-model='type' class="form-control" @change="allCustomer" >
                                <option value="Local">খুচরা</option>
                                <option value="Wholesell">পাইকারি</option>
                            </select>
                        </div>


							<input type="text" placeholder="Search By Name Or Phone" v-model="searchTerm"  v-on:input="searchData" class="form-control" style="width: 300px;">
							<router-link to="/store-customer" class="btn btn-primary float-right" style="margin-top: 6px;margin-right: 6px;">Add Customer</router-link>
						</div>


						<div class="table-responsive">
							<table class="table align-items-center table-flush">
								<thead class="thead-light">
									<tr>
										<th>Name</th>
										<!-- <th>Photo</th> -->
										<th>Phone</th>
										<!-- <th>Email</th> -->
										<th>Address</th>
										<th>Total Due</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr v-for="customer in customers" :key="customer.id">
										<td>{{ customer.name }}</td>
										<!-- <td><img :src="customer.photo" id="img_size"></td> -->
										<td>{{ customer.phone }}</td>
										<!-- <td>{{ customer.email }}</td> -->
										<td>{{ customer.address }}</td>
										<td> <span  :id="'due'+customer.id"></span> {{ totaldue(customer.id) }}

                                            <router-link :id="'button'+customer.id" :to="{name: 'customerdue', params: {id: customer.id}}" class="btn btn-sm btn-info">Pay Now</router-link>

                                        </td>
										<td>
											<router-link :to="{name: 'editCustomer', params: {id: customer.id}}" class="btn btn-sm btn-primary">Edit</router-link>
											<!-- <a @click="deleteCustomer(customer.id)" class="btn btn-sm btn-danger" style="color: white">Delete</a> -->
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="card-footer"></div>
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
			customers: [],
			searchTerm:"",
			type:"Local",
               timeout: null,
		}
	},
	computed: {
		filtersearch(){
			return this.customers.filter(customer => {
				return customer.phone.match(this.searchTerm)
			})
		}
	},
	methods: {

		allCustomer(){
			axios.get(`/api/customer?type=${this.type}`)
			.then(({data}) => (this.customers = data))
			.catch()
		},


		searchData(){
            // clear timeout variable
            clearTimeout(this.timeout);

            this.timeout = setTimeout( ()=> {



                 axios.get('/api/customers/search?data=' + this.searchTerm)
                 .then(({data}) => {

                     this.customers = data
                    //  this.allitems = data
                     //  console.log(this.products)
                 })
                 .catch()

            }, 300);

		},


        totaldue(id){
			axios.get('/api/customer/due/'+id)
			.then(({data}) => {
// console.log(data);
document.getElementById('due'+id).innerHTML=data

if(data==0){

    document.getElementById('button'+id).innerText='View Due List'
}

            })
			.catch()
		},

		deleteCustomer(id){
			Swal.fire({
				title: 'Are you sure?',
				text: "You won't be able to revert this!",
				icon: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				confirmButtonText: 'Yes, delete it!'
			}).then((result) => {
				if (result.isConfirmed) {
					axios.delete('/api/customer/' + id)
						 .then(() => {
						 	this.customers = this.customers.filter(customer => {
						 		return customer.id != id
						 	})
						 })
						 .catch(() => {
						 	this.$router.push({name: 'customer'})
						 })

					Swal.fire(
						'Deleted!',
						'Your file has been deleted.',
						'success'
						)
				}
			})
		}
	},
	mounted(){
		this.allCustomer();
	}
}
</script>

<style lang="css" scoped>
#img_size{
	width: 40px;
}
</style>
