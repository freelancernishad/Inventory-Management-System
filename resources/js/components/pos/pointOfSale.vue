<template>
    <div>
        <div class="container-fluid" id="container-wrapper">
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="./">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">
                        Dashboard
                    </li>
                </ol>
            </div>
            <div class="row mb-3">
                <!-- Area Chart -->
                <div class="col-xl-12 col-lg-12">
                    <div class="card mb-4">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <input type="text" class="form-control" placeholder="Pos" v-model="pos" v-on:change="posidchange"
                                ref="focusMe" @focus="magic_flag = false" id="pos" autofocus />
                            <!-- <label for="pos" class="btn btn-info" id="posbtn" v-on:click="scanpos">{{ postext }}</label> -->
                        </div>
                        <div class="card-body">
                            <div class="table-responsive" style="font-size: 12px">
                            <button type="button" class="flex justify-start ml-2 rounded-md border px-3 py-2 bg-pink-600 text-white" @click="addMore()">Add Custom product</button>
                                <table class="table align-items-center table-flush">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Name</th>
                                            <th style="padding: 12px 38px">
                                                Qty
                                            </th>
                                            <!-- <th style="padding: 12px 50px">
                                                Buy
                                            </th> -->
                                            <th style="padding: 12px 50px">
                                                Sell
                                            </th>
                                            <th>Total</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="(product,iii) in cartProduct" :key="product.id" :style="[Number(product.product_price) < Number(product.buying_price) ? { background: '#ff6a00', color: 'white' } : {}]">
                                            <td>{{ product.product_name }}</td>
                                            <td>
                                                <div
                                                    class="input-group bootstrap-touchspin bootstrap-touchspin-injected">
                                                    <span class="input-group-btn input-group-prepend">
                                                        <button @click.prevent="
                                                            decrement(
                                                                product.id
                                                            )
                                                        " class="btn btn-primary btn-sm bootstrap-touchspin-down"
                                                            type="button" v-if="
                                                                product.product_quantity >=
                                                                2
                                                            ">
                                                            -
                                                        </button>
                                                        <button @click.prevent="
                                                            decrement(
                                                                product.id
                                                            )
                                                        " class="btn btn-primary btn-sm bootstrap-touchspin-down"
                                                            type="button" v-else="" disabled="">
                                                            -
                                                        </button>
                                                    </span>
                                                    <input type="text" @change="qtychange(iii,product.id)" :id="'qty'+iii"  class="form-control" :value="
                                                        product.product_quantity
                                                    " style="width: 28px" />
                                                    <span class="input-group-btn input-group-append">
                                                        <button @click.prevent="
                                                            increment(
                                                                product.id
                                                            )
                                                        " class="btn btn-primary btn-sm bootstrap-touchspin-up"
                                                            type="button">
                                                            +
                                                        </button>
                                                    </span>
                                                </div>
                                            </td>
                                             <!-- <td>{{  product.buying_price }} </td> -->
                                            <td>
                                                <input type="number" v-model="product.product_price" @change="priceChange(product.id,product.product_price)" class="form-control" />
                                            </td>


                                            <td>{{ product.sub_total }}৳</td>
                                            <td>
                                                <a @click="
                                                    deleteItem(product.id)
                                                " class="btn btn-sm btn-danger" style="color: white">X</a>
                                            </td>
                                        </tr>

                    <tr  v-for="(Invoice, index) in Invoices" :key="index" :style="[Number(Invoice.price) < Number(Invoice.buyprice) ? { background: '#ff6a00', color: 'white' } : {}]">

                        <td>

                            <!-- <input v-model="Invoice.name" placeholder="প্রোডাক্ট এর নাম" class="form-control w-full py-2 border border-indigo-500 rounded"/> -->

                            <select v-model="Invoice.name" placeholder="প্রোডাক্ট এর নাম" @change="addCustomProduct($event,index)" class="form-control w-full py-2 border border-indigo-500 rounded">

                                <option value="">Select Custom POroduct</option>
                                <option v-for="(customProduct,indexNo) in customProducts" :key="`indexNo${indexNo}`" :value="customProduct.product_name">{{ customProduct.product_name }}</option>
                            </select>

                        </td>

                        <td style="display:flex;">
                            <input type="number" @change="totalcount" v-model="Invoice.weight_quantity" placeholder="প্রোডাক্ট এর ওজন/পরিমাণ" class="form-control w-full py-2 border border-indigo-500 rounded" min="0" step="5"/>

                                <!-- <select style="width: 75px;"  v-model="Invoice.weight_type" class="form-control">
                                    <option value="">Select</option>
                                    <option>কেজি</option>
                                </select> -->

                            </td>

                        <!-- <td><input type="number" v-model="Invoice.buyprice"  @change="totalcount" placeholder="কেনা দাম" class="form-control w-full py-2 border border-indigo-500 rounded" disabled min="0" step="5"/></td> -->

                        <td><input type="number" v-model="Invoice.price"  @change="totalcount"  placeholder="ইউনিট দাম" class="form-control w-full py-2 border border-indigo-500 rounded" min="0" step="5"/></td>

                        <td>


                             <input type="number" v-model="customtotalObj[index]=Invoice.price*Invoice.weight_quantity" placeholder="মোট দাম" class="form-control w-full py-2 border border-indigo-500 rounded" readonly/>



                        </td>

                        <td><button type="button" class="btn btn-sm btn-danger" @click="remove(index)" >X</button></td>
                    </tr>







                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="card-footer">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="">Discount</label>
                                    <input type="text" v-model="discount" class="form-control">
                                </div>
                            </div>
                        </div>


                        <div class="card-footer">
                            <div class="order-md-2 mb-4">
                                <ul class="list-group mb-3">
                                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                                        <div>
                                            <h6 class="my-0">Total Quantity</h6>
                                        </div>
                                        <span class="text-muted">{{
                                                qty
                                        }}</span>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                                        <div>
                                            <h6 class="my-0">Custom Total</h6>
                                        </div>
                                        <span class="text-muted">৳{{ customtotal }}</span>
                                    </li>

                                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                                        <div>
                                            <h6 class="my-0">Total</h6>
                                        </div>
                                        <span class="text-muted">৳{{ sub_total }}</span>
                                    </li>

                                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                                        <div>
                                            <h6 class="my-0">Discount</h6>
                                        </div>
                                        <span class="text-muted">৳ {{ discount }}</span>
                                    </li>

                                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                                        <div>
                                            <h6 class="my-0">Sub Total</h6>
                                        </div>
                                        <span class="text-muted">৳{{ discountedamount }}</span>
                                    </li>


                                </ul>
                                <form @submit.prevent="orderDone">
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Select Customer</label>
                                        <select class="form-control" id="exampleFormControlSelect1"
                                            v-model="customer_id">
                                            <option v-for="customer in customers" :value="customer.id">
                                                {{ customer.name }} ({{ customer.phone }} ) <span v-if="customer.email=='Local'">(খুচরা)</span> <span v-else-if="customer.email=='Wholesell'">(পাইকারি)</span>
                                            </option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlInput1">Pay</label>
                                        <input type="number" class="form-control" v-model="pay" @change="duecount" maxlength="9"
                                            id="exampleFormControlInput1" />
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlInput2">Due</label>
                                        <input type="number" class="form-control" v-model="due"
                                            id="exampleFormControlInput2" readonly />
                                    </div>


                                    <div class="form-group">
                                        <label for="exampleFormControlSelect2">Pay By</label>
                                        <select class="form-control" id="exampleFormControlSelect2" v-model="payBy">
                                            <option value="Cheque">
                                                Cheque
                                            </option>
                                            <option value="Hand Cash">
                                                Hand Cash
                                            </option>
                                            <option value="Gift Card">
                                                Gift Card
                                            </option>
                                        </select>
                                    </div>
<!--
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect2">Memo</label>
                                        <select class="form-control" id="exampleFormControlSelect2" v-model="memo">
                                            <option value="memo1">
                                                মেসার্স এলাহী ট্রেডার্স
                                            </option>
                                            <option value="memo2">
                                               মেসার্স রনি ট্রেডার্স
                                            </option>
                                        </select>
                                    </div> -->

                                    <div class="form-check">
                                    <input class="form-check-input" type="checkbox"  v-model="sms" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                       Mobile Sms Sent
                                    </label>
                                    </div>



                                    <button class="btn btn-success" type="submit">
                                        {{ buttonText }}
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Pie Chart -->
                <div class="col-xl-12 col-lg-12">
                    <div class="card mb-4">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h5 class="m-0 font-weight-bold text-primary">
                                Products
                            </h5>
                            <input type="text" placeholder="Search" v-model="searchTerm" v-on:input="searchData" class="form-control"
                                style="width: 300px" />
                        </div>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab"
                                    aria-controls="home" aria-selected="true"  @click="allProduct(1,'home')" >Home</a>
                            </li>
                            <li class="nav-item" role="presentation" v-for="category in categories" :key="category.id">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                                    aria-controls="profile" aria-selected="false"
                                    @click="categoryProduct(category.id)">{{ category.category_name }}</a>
                            </li>
                        </ul>



                        <div class="tab-content" id="myTabContent">

                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6 btn btn-sm"  v-for="product in products.data"
                                            :key="product.id"  @click.prevent="addToCart(product.id)">
                                            <div class="card" style="
                                                    align-items: center;
                                                    margin-bottom: 10px;
                                                ">

                                                    <!-- <img :src="product.image" class="card-img-top" id="image_size" alt="..." /> -->
                                                    <div class="card-body" :style="[Number(product.selling_price) < Number(product.buying_price) ? { background: '#ff6a00', color: 'white' } : {}]">
                                                        <h5 class="card-title text-center">
                                                            {{
                                                                    product.product_name
                                                            }}
                                                            -
                                                            {{
                                                                    product.selling_price
                                                            }} <span class="money">৳</span>
                                                        </h5>
                                                        <td v-if="
                                                            product.product_quantity >=
                                                            1
                                                        ">
                                                            <span class="badge badge-success">Available
                                                                <span class="badge badge-light">{{
                                                                        product.product_quantity
                                                                }}</span></span>
                                                        </td>
                                                        <td v-else="">
                                                            <span class="badge badge-danger">Stock Out</span>
                                                        </td>
                                                    </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <pagination :data="allitems" v-bind:showDisabled="true" icon="chevron"
                        v-on:change-page="allProduct"></pagination>
                </div>
            </div>
            <!--Row-->
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
    mounted() {

        if(this.$route.query.page){

            if(this.$route.query.id){
                this.allProduct(this.$route.query.page,this.$route.query.id);
            }else{
                this.allProduct(this.$route.query.page);

            }


        }else{
            this.allProduct();
        }


        this.customProduct();
        this.allCategory();
        this.allCustomers();
        this.cartProducts();
        this.vat();
        Reload.$on("afterAddToCart", () => {
            this.cartProducts();
        });
    },
    data() {
        return {
            customProducts: [],
            products: [],
            allitems: {},
            qt: null,
            orqt: null,
            categories: [],
            categoryProducts: [],
            customers: [],
            cartProduct: [],
            searchTerm: "",
            vats: {
                vat:0
            },
            // Form
            customer_id: "",
            pay: "",
            due: "",
            payBy: "",
            memo: "memo2",
            sms: "",
            pos: "",
            magic_flag: false,
            postext: "Scan",
            isActive: false,
            cat_id :'',
            buttonText :'Submit',
            Invoices: [],
            customtotalObj:{},
            customtotal:0,
            discount:0,
            categoryid:0,
        };
    },
    computed: {
        filtersearch() {
            return this.products.filter((product) => {
                return product.product_name.match(this.searchTerm);
            });
        },
        filterCatSearch() {
            return this.categoryProducts.filter((catProduct) => {
                return catProduct.product_name.match(this.searchTerm);
            });
        },
        qty() {
            let sum = 0;
            for (let i = 0; i < this.cartProduct.length; i++) {
                sum += parseFloat(this.cartProduct[i].product_quantity);
            }
            return sum;
        },

        sub_total() {
            let sum = 0;
            for (let i = 0; i < this.cartProduct.length; i++) {
                sum += parseFloat(this.cartProduct[i].sub_total);
            }
            var price = Number(sum+this.customtotal);

            return price;
        },

        discountedamount() {

            if(this.discount<0){
                return 0;
            }
            var discount =  Number(this.sub_total)-Number(this.discount);
            return discount;
        },

    },

    methods: {

        duecount(){
// console.log(this.pay);
if (this.pay > this.discountedamount) this.pay=this.discountedamount;

            this.due = this.discountedamount-this.pay
        },


        allProduct(page = 1, id = null) {
    // Retrieve the current id from the route query if not provided
    if (id === null) {
        id = this.$route.query.id || 0;
    }

    // Check if the id has changed
    const currentId = this.$route.query.id || 0;
    if (id !== currentId) {
        page = 1; // Reset page to 1 if id changes
    }

    // Update the router query with the page number if defined
    if (page !== this.$route.query.page) {
        this.$router.push({ query: { ...this.$route.query, page } });
    }

    // Construct the base URL for the API request
    let s_url = '';
    let queryParams = { ...this.$route.query, page };

    // Determine the category id query parameter
    if (id === 'home') {
        delete queryParams.id;
    } else {
        queryParams.id = id;
    }

    // Update the router query with the new id if it's not 'home'
    this.$router.push({ query: queryParams });

    // Append the category id query parameter if not 'home'
    const idQuery = (id !== 0 && id !== 'home') ? `&catid=${id}` : '';

    // Determine the API endpoint based on the search term
    if (this.searchTerm === '') {
        s_url = `/api/product?product_type=normal&page=${page}${idQuery}`;
    } else {
        s_url = `/api/products/search?filter[product_type]=normal&filter[product_name]=${encodeURIComponent(this.searchTerm)}&page=${page}${idQuery}`;
    }

    // Make the API request
    axios
        .get(s_url)
        .then(({ data }) => {
            this.products = data;
            this.allitems = data;
            if (data.data.length > 0) {
                this.qt = data.data[0].product_quantity;
            }
            // console.log(data);
        })
        .catch(error => {
            console.error("There was an error fetching the products:", error);
        });
},

        customProduct(){
            axios
                .get('/api/custom/products')
                .then(({ data }) => {
                    this.customProducts = data;
                })
                .catch();
        },


        addCustomProduct(event,index) {
      const selectedValue = event.target.value;
      const product = this.customProducts.find(product =>
        product.product_name.toLowerCase() === selectedValue.toLowerCase()
      );
    //   console.log(product);
      // Perform your custom logic with the selected product
      this.Invoices[index].id = product.id
      this.Invoices[index].buyprice = product.buying_price
      this.Invoices[index].price = product.selling_price

    },


		searchData(page){

            var s_url = '';
            if(this.cat_id==''){
                s_url = '/api/products/search?filter[product_name]=' + this.searchTerm;
            }else{
                s_url = '/api/products/search?filter[product_name]=' + this.searchTerm+'&filter[category_id]='+this.cat_id;

            }

            // clear timeout variable
            clearTimeout(this.timeout);

            this.timeout = setTimeout( ()=> {


                if (typeof page === 'undefined') {
                     page = 1;
                 }
                 axios.get(s_url)
                 .then(({data}) => {

                     this.products = data
                     this.allitems = data
                     //  console.log(this.products)
                 })
                 .catch()

            }, 300);


		},

        allCategory() {
            axios
                .get("/api/category")
                .then(({ data }) => {
                    this.categories = data;
                })
                .catch();
        },
        categoryProduct(id,page=1) {
            if (typeof page === "undefined") {
                page = 1;
            }else{
                page =  this.$route.query.page
            }

            this.allProduct(page,id);
            return ;


            if (typeof page === "undefined") {
                page = 1;
            }else{
                this.$router.push({ query: { ...this.$route.query, page } });

            }

            this.cat_id = id

            if(this.searchTerm==''){

            axios
                .get("/api/category/product/" + id + '?page='+page)
                .then(({ data }) => {
                    //  this.categoryProducts = data
                    this.products = data;
                    this.allitems = data;
                    console.log(data);
                })
                .catch();
            }else{
                this.searchData();
            }



        },
        allCustomers() {
            axios
                .get("/api/customer?type=")
                .then(({ data }) => (this.customers = data))
                .catch();
        },
        // Cart
        addToCart(id) {
            axios
                .get("/api/addToCart/" + id)
                // .then(({data}) => (console.log(data)))
                .then(({ data }) => {
                    //   console.log(data);
                    if (data == 0) {
                        Notification.Out_of_stock();
                        this.qt = data;
                        Reload.$emit("afterAddToCart");
                    } else {
                        this.qt = data;
                        Reload.$emit("afterAddToCart");
                        Notification.cart_success();
                    }
                    this.pos = "";
                })
                .catch();
        },
        posidchange() {
            if (this.pos != "") {
                axios
                    .get("/api/product_code/" + this.pos)
                    .then(({ data }) => {
                        //    console.log(data[0].id)
                        if (data == 0) {
                            Notification.not_found();
                            this.pos = "";
                        } else {
                            this.addToCart(data[0].id);
                            this.postext = "Scaning";
                        }
                    })
                    .catch(console.log("error"));
                this.$refs.focusMe.focus();
            }
        },
        scanpos() {
            this.magic_flag = true;
            this.postext = "Scaning";
            console.log(this.magic_flag);
            this.$refs.focusMe.focus();
        },
        cartProducts() {
            axios
                .get("/api/cart-products")
                .then(({ data }) => {
                    this.cartProduct = data;
                    //    this.qt = this.qt-this.qty
                    //     console.log(this.qty);
                    //  console.log(this.cartProduct);
                })
                .catch();
        },
        deleteItem(id) {
            axios
                .get("/api/cart/delete/" + id)
                .then(() => {
                    Reload.$emit("afterAddToCart");
                    Notification.cart_delete();
                })
                .catch();
        },
        increment(id) {
            // console.log(id);
            axios
                .get("/api/cart/increment/" + id)
                .then(({ data }) => {
                    // console.log(data);
                    if (data == 0) {
                        Notification.Out_of_stock();
                        this.qt = data;
                        Reload.$emit("afterAddToCart");
                    } else {
                        this.qt = data;
                        Reload.$emit("afterAddToCart");
                        Notification.success();
                    }
                })
                .catch();
        },
        decrement(id) {
            axios
                .get("/api/cart/decrement/" + id)
                .then(({ data }) => {
                    this.qt = data;
                    Reload.$emit("afterAddToCart");
                    Notification.success();
                    // Reload.$emit('afterAddToCart')
                    // Notification.success()
                })
                .catch();
        },

            qtychange(index,id){
                 var product_quantity = document.getElementById('qty'+index).value;


                   axios
                .get(`/api/cart/increment/${id}?custom=${product_quantity}`)
                .then(({ data }) => {
                    // console.log(data);
                    if (data <= 0) {
                        Notification.Out_of_stock();
                        this.qt = data;
                        Reload.$emit("afterAddToCart");
                    } else {
                        this.qt = data;
                        Reload.$emit("afterAddToCart");
                        Notification.success();
                    }
                })
                .catch();
            },

        priceChange(id, price) {
            // console.log(id,price)
            axios
                .get("/api/cart/price/" + id + "/" + price)
                .then(({ data }) => {
                    Reload.$emit("afterAddToCart");
                    Notification.success();
                    // Reload.$emit('afterAddToCart')
                    // Notification.success()
                })
                .catch();
        },
        vat() {
            axios
                .get("/api/vat")
                .then(({ data }) => (this.vats = data))
                .catch();
        },


    addMore() {
      this.Invoices.push({
        id: "",
        name: "",
        weight_quantity: "",
        weight_type: "কেজি",
        buyprice: "",
        price: "",
      });
    },
    remove(index) {
      this.Invoices.splice(index, 1);

 Notification.cart_delete();

    },

 sum( obj ) {
  var sum = 0;
  for( var el in obj ) {
    if( obj.hasOwnProperty( el ) ) {
      sum += parseFloat( obj[el] );
    }
  }
  return sum;
},



        totalcount(){

var summed = this.sum(this.customtotalObj);
// console.log( "sum: "+summed );
this.customtotal = summed;
        },







        orderDone() {
            this.buttonText='Looding....';
            let total = (this.discountedamount * this.vats.vat) / 100 + this.discountedamount;
            var data = {
                qty: this.qty,
                sub_total: this.discountedamount,
                discount: this.discount,
                customer_id: this.customer_id,
                pay: this.pay,
                due: this.due,
                payBy: this.payBy,
                memo: this.memo,
                sms: this.sms,
                vat: this.vats.vat,
                customInvoice: this.Invoices,
                total: total,
            };
            axios.post("/api/order", data).then(({ data }) => {
                  this.buttonText='Submit';

                  if(data=='Custom Product Not Available'){
                    Notification.error();
                  }else{
                        this.$router.push({
                        name: "orderDetails",
                        params: { id: data },
                        });
                        Notification.success();
                  }


            });
        },
    },
};
</script>
<style lang="css" scoped>
#image_size {
    height: 100px;
    width: 135px;
}



.bg-pink-600 {
    --tw-bg-opacity: 1;
    background-color: rgba(219,39,119,var(--tw-bg-opacity));
}



</style>
