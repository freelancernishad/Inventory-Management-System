<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="row">
				<div class="col-lg-12 mb-4">
					<!-- Simple Tables -->
					<div class="card">


						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

							<h2 class="m-0 font-weight-bold text-primary">Product List</h2>

							<input type="text" placeholder="Search By Product Name Or Code" v-model="searchTerm" v-on:input="searchData" class="form-control" style="width: 300px;">
		<router-link to="/store-product" class="btn btn-primary float-right" style="margin-top: 6px;margin-right: 6px;">Add Product</router-link>

						</div>



                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <div></div>
							<a href="/product/export" class="btn btn-danger float-right" style="margin-top: 6px;margin-right: 6px;">Export Products</a>
						</div>


						<div class="table-responsive">
							<table class="table align-items-center table-flush">
								<thead class="thead-light">
									<tr>
										<th width="15%">Name</th>
										<!-- <th>Image</th> -->
										<th width="5%">Barcode</th>
										<th width="5%">Code</th>
										<th width="10%">Category</th>

										<th width="15%">Group</th>
										<th width="5%">Buy</th>
										<th width="5%">Sell</th>
										<th width="5%">Quantity</th>
										<th width="10%">Buying Date</th>
										<!-- <th width="10%">Expired</th> -->
										<th width="15%">Action</th>
									</tr>
								</thead>
								<tbody>


<!-- v-for="lang in paginated('languages')" -->

<tr v-for="product in products.data" :key="product.id" :style="[Number(product.selling_price) < Number(product.buying_price) ? { background: '#ff6a00', color: 'white' } : {}]">
										<td>{{ product.product_name }}</td>
										<!-- <td><img :src="product.image" id="img_size"></td> -->
										<td>

                                            <!-- <b-button @click="barcodesownload(product.product_code)">Open Modal</b-button> -->

                                            <barcode style="width: 10px;
    height: 10px;display:none" :id="product.id" :value="product.product_code">Show this if the rendering fails.</barcode>




     <b-button color="green darken-1" class="btn btn-success btn-xs" style=""  @click="print(product.id)"><i class="fas fa-download"></i></b-button>



                                            </td>
										<td>{{ product.product_code }}</td>
										<td>{{ product.category_name }}</td>

										<td>{{ product.root }}</td>
										<td>{{ product.buying_price }}</td>
										<td>{{ product.selling_price }}</td>
										<td>{{ product.product_quantity }} <span v-if="product.product_type=='custom'">কেজি</span><span v-else>টি</span> <button class='btn btn-info' @click="addMoreProduct(product)">+</button> </td>
										<td>{{ product.buying_date }}</td>

										<!-- <td style="background: green;color: white;text-align: center;" v-if="product.expired_date>todaydate"> {{ product.expired_date }}</td>
										<td style="background: red;color: white;text-align: center;" v-else>{{ product.expired_date }}</td> -->


										<td>
											<router-link :to="{name: 'editProduct', params: {id: product.id}}" class="btn btn-sm btn-primary">Edit</router-link>
											<!-- <a @click="deleteProduct(product.id)" class="btn btn-sm btn-danger" style="color: white">Delete</a> -->
										</td>
									</tr>



								</tbody>
							</table>





<!-- <Pagination :data="products" @pagination-change-page="filtersearch" /> -->

						</div>
						<div class="card-footer">

<pagination :data="allitems" v-bind:showDisabled="true" icon="chevron" v-on:change-page="allProduct"></pagination>

                        </div>
					</div>
				</div>
			</div>
		</div>
<!--
<paginate
  name="languages"
  :list="langs"
  :per="2"
>
  <li v-for="lang in paginated('languages')">
    {{ lang }}
  </li>
</paginate> -->


    <b-modal hide-footer  v-model="modalShow">
        <h3 style='text-align:center'>বর্তমান এ {{ product.product_name }} আছে {{ product.product_quantity }} টি। আরো {{ product.product_name }} টি যোগ করতে চান? তাহলে যতটি {{ product.product_name }} যোগ করতে চান তা নিচের বক্স এ বসিয়ে যোগ করুন বাটন এ চাপ দেন।</h3>

        <form @submit.prevent='addProductSubmit' >


           <div class="form-group">
			<label for="">Quantity</label>
			<input type="tel" class="form-control" min="1" ref="product_quantity" v-model="form.product_quantity">
		   </div>
		   <div class="form-group">
			<button type="button" v-if="loading" class='btn btn-success'>অপেক্ষা করুন</button>
			<button type="submit" v-else class='btn btn-success'>যোগ করুন</button>
		   </div>

        </form>

    </b-modal>

    <!-- <b-modal  v-model="modalShow"><barcode id="print" :value="barcodeid">Show this if the rendering fails.</barcode>

     <b-button color="green darken-1"  @click="print()">Print</b-button>
    </b-modal> -->

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
				id:'',
				product_quantity:1,
			},
			products: [],
			product: [],
			allitems: {},
			searchTerm:"",
            barcodeValue: 'test',
            modalShow: false,
            barcodeid: '',
             timeout: null,
             todaydate: null,
             loading:false,

		}
	},
	computed: {
		filtersearch(){
			return this.products.filter(product => {
                // console.log(product)
				return product.product_name.match(this.searchTerm)
			})
		}
	},
    watch: {
        '$route': {
            handler(newValue, oldValue) {
                this.allProduct();
            },
            deep: true
        }
    },
	methods: {
		addProductSubmit(){
            this.loading=true
			axios.post('/api/update/product_quantity',this.form)
			.then(({data}) => {
                this.modalShow = false
                this.loading=false
                this.allProduct();
            })
			.catch()
		},
        addMoreProduct(product){
            this.product = product;
            this.form.id = product.id;
            // console.log(product);
            this.modalShow = true;
			setTimeout(() => {
				const input = this.$refs.product_quantity;
				input.focus();
				input.select();
				}, 0);
        },

    print(id) {
      var prtContent = document.getElementById(id);
      var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
      WinPrint.document.write(prtContent.innerHTML);
      WinPrint.document.close();
      WinPrint.focus();
      WinPrint.print();
    //   WinPrint.close();
    },

        barcodesownload(id){
           this.barcodeid = id
             this.modalShow = true
        },
		allProduct(page){

        this.todaydate = User.dateformat()[0];


           if (typeof page === 'undefined') {
				page = 1;
			}

            var product_type = 'normal'
            if(this.$route.query.product_type){
                product_type = this.$route.query.product_type;
            }


			axios.get('/api/product?page=' + page + '&product_type='+product_type)
			.then(({data}) => {

                this.products = data
                this.allitems = data
                //   console.log(data)
            })
			.catch()
		},

		searchData(page){


            // clear timeout variable
            clearTimeout(this.timeout);

            this.timeout = setTimeout( ()=> {


                if (typeof page === 'undefined') {
                     page = 1;
                 }
                 axios.get(`/api/products/search?filter[product_name]=${this.searchTerm}`)
                 .then(({data}) => {

                     this.products = data
                     this.allitems = data
                     //  console.log(this.products)
                 })
                 .catch()

            }, 300);


		},




		deleteProduct(id){
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
					axios.delete('/api/product/' + id)
						 .then(() => {
                               Notification.customdelete('Product Deleted');
                               this.allProduct();
						 	this.products = this.products.filter(product => {
						 		return product.id != id
						 	})
						 })
						 .catch(() => {
						 	this.$router.push({name: 'product'})
						 })

				}
			})
		}
	},
	mounted(){
		this.allProduct();
	}
}
</script>

<style lang="css" scoped>
#img_size{
	width: 40px;
}
th,td {
    font-size: 12px;
        padding: 4px 7px !important;
}



</style>
