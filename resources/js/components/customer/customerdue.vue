<template>
  <div class="row justify-content-center">
    <div class="col-xl-12 col-lg-12 col-md-12">
      <div class="row">
        <div class="col-lg-12 mb-4">
          <!-- Simple Tables -->
          <div class="card">
            <div
              class="
                card-header
                py-3
                d-flex
                flex-row
                align-items-center
                justify-content-between
              "
            >
              <h2 class="m-0 font-weight-bold text-primary">{{ customer }}'s Due Orders</h2>
              <input
                type="text"
                placeholder="Search By Phone"
                v-model="searchTerm"
                class="form-control"
                style="width: 300px"
              />
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th>Name</th>
                    <th>Total Amount</th>
                    <th>Pay</th>
                    <th>Due</th>
                    <th>Pay By</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="order in filtersearch" :key="order.id">
                    <td>{{ order.name }}</td>
                    <td>{{ order.total }}</td>
                    <td>{{ order.pay }}</td>
                    <td>{{ order.due }}</td>
                    <td>{{ order.payBy }}</td>
                    <td>

                      <router-link v-if="order.due > 0"
                        :to="{ name: 'orderPay', params: { id: order.id } }"
                        class="btn btn-sm btn-info"
                        >Pay</router-link
                      >

                      <router-link
                        :to="{ name: 'orderDetails', params: { id: order.id } }"
                        class="btn btn-sm btn-primary"
                        >View</router-link
                      >
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
  created() {
    if (!User.loggedIn()) {
      this.$router.push({ name: "/" });
    }
  },

  data() {
    return {
      orders: [],
      searchTerm: "",
      customer: "",
    };
  },
  computed: {
    filtersearch() {
      return this.orders.filter((order) => {
        return order.name.match(this.searchTerm);
      });
    },
  },
  methods: {
    allOrder() {

let id = this.$route.params.id

      axios
        .get("/api/due-order/"+id)
        .then(({ data }) => {
            if(data.length==0){
                this.orders = data
                this.customer = 'Unknown'
            }else{
                this.orders = data
                this.customer = data[0].name
            }


            // console.log(data.length)
        })
        .catch();
    },

        totaldue(){
            let id = this.$route.params.id
			axios.get('/api/customer/due/'+id)
			.then(({data}) => {
// console.log(data);
            if(data==0){
                // this.$router.push({name: 'customer'})
            }

            })
			.catch()
		},

  },



  mounted() {
this.totaldue();
    this.allOrder();

  },
};
</script>

<style lang="css" scoped>
#img_size {
  width: 40px;
}
</style>
