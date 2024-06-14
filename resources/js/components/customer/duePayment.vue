<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="row">
				<div class="col-lg-12 mb-4">
					<!-- Simple Tables -->
					<div class="card">


						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

							<h2 class="m-0 font-weight-bold text-primary">Due Payment List</h2>

                            <input type="date" placeholder="Search By Added Date" v-model="searchTerm" class="form-control" style="width: 300px;">

                            <button class="btn btn-info" v-if="loading">Searching.....</button>
                            <button class="btn btn-info" v-else @click="SearchItem">Search</button>

						</div>






						<div class="table-responsive">
							<table class="table align-items-center table-flush">
								<thead class="thead-light">
									<tr>
										<th width="35%">Name</th>
										<th width="20%">date</th>
										<th width="15%">Amount</th>
									</tr>
								</thead>

								<tbody>
                                    <tr v-for="product in products.data" :key="product.id">
										<td>{{ product.customer.name }}</td>
										<td>{{ product.pay_date }}</td>
										<td>{{ product.payment_amount }} টাকা</td>
									</tr>
								</tbody>

								<tfoot>
                                    <tr>

										<td colspan="2" style="text-align: right;">মোট</td>
										<td>{{ totaldue }} টাকা</td>
									</tr>
								</tfoot>

							</table>







						</div>
						<div class="card-footer">

<pagination :data="allitems" v-bind:showDisabled="true" icon="chevron" v-on:change-page="allProduct"></pagination>

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
             page:1,
             totaldue:0,

		}
	},
	computed: {

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


        SearchItem(){
            this.loading=true
            this.allProduct(this.page,this.searchTerm)
        },



		allProduct(page=1,searchTerm=''){
            this.page = page

        this.todaydate = User.dateformat()[0];

           if (typeof page === 'undefined') {
				page = 1;
			}
            var searchQ= '';
           if (this.searchTerm) {
            searchQ = `&date=${this.searchTerm}`
			}
			axios.get('/api/customer/paid/list?page=' + page+searchQ)
			.then(({data}) => {

                this.products = data.paid
                this.totaldue = data.total_Paid
                this.allitems = data
                //   console.log(data)
                this.loading=false
            })
			.catch()
		},







	},
	mounted(){
        // this.searchTerm = User.dateformat()[0];
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
