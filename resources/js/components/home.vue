<template>
    <div>
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

            <div class="col-md-12">
                <div class="card">
                    <div class="cord-body">
                        <div class="form-group pl-3">
                            <label for="">Date</label>

                        <input type="date" class="form-control" v-model="date" @change="datechange" style="width:200px">
                         </div>
                    </div>
                </div>

            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-uppercase mb-1">
                                    Today Sell Amount
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    <span class="money">৳</span> {{ Number(dashboard.todaySell).toFixed(2) }}
                                </div>
                                <div class="mt-2 mb-0 text-muted text-xs">
                                    <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>
                                        3.48%</span>
                                    <span>Since last month</span> -->
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-calendar fa-2x text-primary"></i>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- Earnings (Annual) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-uppercase mb-1">
                                    Today
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    <span class="money">৳</span> {{ Number(dashboard.todayIncome).toFixed(2) }}
                                </div>
                                <div class="mt-2 mb-0 text-muted text-xs">
                                    <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i>
                                        12%</span>
                                    <span>Since last years</span> -->
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-shopping-cart fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- New User Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-uppercase mb-1">
                                    Today Due
                                </div>
                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                    <span class="money">৳</span> {{ Number(dashboard.todayDue).toFixed(2) }}
                                </div>
                                <div class="mt-2 mb-0 text-muted text-xs">
                                    <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i>
                                        20.4%</span>
                                    <span>Since last month</span> -->
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-users fa-2x text-info"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-uppercase mb-1">
                                    Expense Amount
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    <span class="money">৳</span> {{ Number(dashboard.expenses).toFixed(2) }}
                                </div>
                                <div class="mt-2 mb-0 text-muted text-xs">
                                    <!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i>
                                        1.10%</span>
                                    <span>Since yesterday</span> -->
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-comments fa-2x text-warning"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>




            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-uppercase mb-1">
                                    Total Stock
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                     {{ Number(dashboard.totalStock).toFixed(2) }} টি
                                </div>
                                <div class="mt-2 mb-0 text-muted text-xs">
                                    <!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i>
                                        1.10%</span>
                                    <span>Since yesterday</span> -->
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-comments fa-2x text-warning"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-uppercase mb-1">
                                    Total Stock Amount
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    <span class="money">৳</span> {{ Number(dashboard.totalStockAmount).toFixed(2) }}
                                </div>
                                <div class="mt-2 mb-0 text-muted text-xs">
                                    <!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i>
                                        1.10%</span>
                                    <span>Since yesterday</span> -->
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-shopping-cart fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>







            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-uppercase mb-1">
                                    Total Custom Stock
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                     {{ Number(dashboard.customTotalStock).toFixed(2) }} কেজি
                                </div>
                                <div class="mt-2 mb-0 text-muted text-xs">
                                    <!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i>
                                        1.10%</span>
                                    <span>Since yesterday</span> -->
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-comments fa-2x text-warning"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>





            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-uppercase mb-1">
                                    Total Stock Custom Amount
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    <span class="money">৳</span> {{ Number(dashboard.customTotalStockAmount).toFixed(2) }}
                                </div>
                                <div class="mt-2 mb-0 text-muted text-xs">
                                    <!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i>
                                        1.10%</span>
                                    <span>Since yesterday</span> -->
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-shopping-cart fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-uppercase mb-1">
                                    Total Dues Amount
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    <span class="money">৳</span> {{ Number(dashboard.totalDues).toFixed(2) }}
                                </div>
                                <div class="mt-2 mb-0 text-muted text-xs">
                                    <!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i>
                                        1.10%</span>
                                    <span>Since yesterday</span> -->
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-shopping-cart fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>










        </div>
        <div class="row">
            <div class="col-lg-12 mb-4">

                <!-- <vue-select class="vue-select1"  :options="yearsList" :model.sync="result1" >
        </vue-select> -->

                Search :
                <select v-model="year" id="select" @change="monthlybar" class="form-control">
                    <option value="">Select</option>
                    <option v-for="listy in yearsList">{{ listy }}</option>
                </select>
                <Bar :chart-options="chartOptions" :chart-data="chartData" :chart-id="chartId"
                    :dataset-id-key="datasetIdKey" :plugins="plugins" :css-classes="cssClasses" :styles="styles"
                    :width="width" :height="height" />
            </div>

            <div class="col-lg-12 mb-4">
              Search :
                <select v-model="monthname" id="select" @change="dailybar" class="form-control">
                    <option value="">Select</option>
                    <option v-for="(listm, index) in monthlist" :value="index">{{ listm }}</option>
                </select>
                <Bar :chart-options="chartOptions2" :chart-data="chartData2" :chart-id="chartId2"
                    :dataset-id-key="datasetIdKey2" :plugins="plugins2" :css-classes="cssClasses2" :styles="styles2"
                    :width="width2" :height="height2" />
            </div>
        </div>

    </div>
</template>
<script>
export default {
    name: "home",
    created() {
        if (!User.loggedIn()) {
            this.$router.push({ name: "/" });
        }
    },
    props: {
        chartId: {
            type: String,
            default: "bar-chart",
        },
        datasetIdKey: {
            type: String,
            default: "label",
        },
        width: {
            type: Number,
            default: 400,
        },
        height: {
            type: Number,
            default: 300,
        },
        cssClasses: {
            default: "",
            type: String,
        },
        styles: {
            type: Object,
            default: () => { },
        },
        plugins: {
            type: Object,
            default: () => { },
        },
        chartId2: {
            type: String,
            default: "bar-chart2",
        },
        datasetIdKey2: {
            type: String,
            default: "label2",
        },
        width2: {
            type: Number,
            default: 400,
        },
        height2: {
            type: Number,
            default: 300,
        },
        cssClasses2: {
            default: "",
            type: String,
        },
        styles2: {
            type: Object,
            default: () => { },
        },
        plugins2: {
            type: Object,
            default: () => { },
        },
    },
    data() {
        return {
            dashboard: {},



            newdata: new Date(),
            year: "",
            month: "",
            date: "",
            start: "",
            end: "",
            yeard: "",
            dated: "",
            startd: "",
            endd: "",
            monthname: "",
            yearsList: [],
            monthlist: [],
            chartData: {
                labels: [
                    "January",
                    "February",
                    "March",
                    "April",
                    "May",
                    "June",
                    "July",
                    "August",
                    "September",
                    "October",
                    "November",
                    "December",
                ],
                datasets: [],
            },
            chartOptions: {
                responsive: true,
                maintainAspectRatio: false,
            },
            chartData2: {
                labels: [
                    "January",
                    "February",
                    "March",
                    "April",
                    "May",
                    "June",
                    "July",
                    "August",
                    "September",
                    "October",
                    "November",
                    "December",
                ],
                datasets: [],
            },
            chartOptions2: {
                responsive: true,
                maintainAspectRatio: false,
            },
            monthdays : ''
        };
    },
    mounted() {
              this.date = User.dateformat()[0];
        this.monthname = this.newdata.getMonth();
this.countmonth();
this.getAllData();




        this.monthlybar();
        this.dailybar();
        this.yearslist();
        this.monthslist();
        //   $('#select').select2();

    },
    methods: {
        countmonth(){
         const date = new Date();

        var count =  new Date(
            date.getFullYear(),
            this.monthname + 1,
            0
        ).getDate();
        // console.log(count)
        this.monthdays = count
        },


        datechange(){

            this.getAllData();
            // this.todaySell();
            // this.todayIncome();
            // this.todayDue();
            // this.expenses();

        },

        getAllData() {
    axios
        .get(`/api/all-data`, { params: { date: this.date, product_type: 'normal' } })
        .then(({ data }) => {
            this.dashboard = data
        })
        .catch(error => {
            console.error(error);
        });
},





        monthlybar() {
            // console.log(this.year=)
            // this.start = this.newdata.getFullYear()+'-'+this.newdata.getMonth()+'-'+this.newdata.getDate();
            this.start = this.newdata.getFullYear() + "-1-1";
            this.end = this.newdata.getFullYear() + "-12-"+this.monthdays;
            if (this.year == "") {
                this.year = this.newdata.getFullYear();
            }
            axios
                .get(
                    "/api/monthly/bar?start=" +
                    this.start +
                    "&end=" +
                    this.end +
                    "&year=" +
                    this.year
                )
                .then(({ data }) => {
                    this.chartData.datasets = [data.reports2, data.reports];
                    //   console.log(this.chartData.datasets)
                })
                .catch();
        },
        dailybar() {
            var monthd = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

this.countmonth()

            this.startd =
                this.newdata.getFullYear() +
                "-" +
                monthd[this.monthname] +
                "-1";
            this.endd =
                this.newdata.getFullYear() +
                "-" +
                monthd[this.monthname] +
                "-"+this.monthdays;
            this.yeard = this.newdata.getFullYear();
            axios
                .get(
                    "/api/daily/bar?start=" +
                    this.startd +
                    "&end=" +
                    this.endd +
                    "&year=" +
                    this.yeard
                )
                .then(({ data }) => {
                    this.chartData2.datasets = [data.reports];
                    this.chartData2.labels = data.allmonth;
                    //  console.log(this.chartData2.labels);
                    // if(this.monthname==''){

                    //     this.monthname = this.newdata.getMonth();
                    // }
                })
                .catch();
        },

        yearslist() {

            axios
                .get("api/years/list?type=year")
                .then(({ data }) => {
                    // console.log(data);
                    this.yearsList = data;
                })
                .catch();
        },
        monthslist() {

            axios
                .get("api/years/list?type=month")
                .then(({ data }) => {
                    // console.log(data);
                    this.monthlist = data;
                })
                .catch();
        },
    },
};





</script>
<style lang="css" scoped>
#img_size {
    width: 40px;
}
</style>
