<?php

namespace App\Http\Controllers\api;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Exports\ProductsExport;
use App\Models\AddProductQuantity;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use Maatwebsite\Excel\Facades\Excel;
use Intervention\Image\Facades\Image;
use Spatie\QueryBuilder\QueryBuilder;
use Spatie\QueryBuilder\AllowedFilter;

class ProductController extends Controller
{


    function add_product_quantities_list(Request $request)
    {
        if ($request->has('date')) {
            $date = $request->input('date');
            $add_product_quantities = AddProductQuantity::with('product')
                ->whereDate('date', $date)
                ->orderBy('id','desc')
                ->paginate(20);
        } else {
            $add_product_quantities = AddProductQuantity::with('product')->orderBy('id','desc')->paginate(20);
        }

        return $add_product_quantities;
    }

    public function export()
    {

        return Excel::download(new ProductsExport, 'Products.xlsx');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function productCodeGen(Request $request)
    {

         $last = DB::table('products')->latest()->count();
         if($last==0){

            return $product_code = str_pad(10000, 5, '0', STR_PAD_LEFT);

         }else{
             $last = DB::table('products')->latest()->first();
             $product_code = $last->product_code;

             return $product_code+1;
         }
    }

    function customProducts(){
        return Product::where('product_type','custom')->orderBy('id','desc')->get();
    }


    public function index(Request $request)
    {
        $product_type='normal';
        if($request->product_type){
            $product_type = $request->product_type;
        }


        if($request->catid){
            $catid = $request->catid;

            $products = DB::table('products')
            ->join('categories', 'products.category_id', 'categories.id')
            // ->join('suppliers', 'products.supplier_id', 'suppliers.id')
            ->select('products.*', 'categories.category_name')
            ->where('product_type',$product_type)
            ->where('category_id',$catid)
            ->orderBy('products.id', 'desc')
            ->paginate(25);

        }else{
            $products = DB::table('products')
            ->join('categories', 'products.category_id', 'categories.id')
            // ->join('suppliers', 'products.supplier_id', 'suppliers.id')
            ->select('products.*', 'categories.category_name')
            ->where('product_type',$product_type)
            ->orderBy('products.id', 'desc')
            ->paginate(25);
        }








        return response()->json($products);



    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'category_id'      => 'required',
            'supplier_id'      => 'required',
            'product_name'     => 'required',
            'product_code'     => 'required|max:80',
            // 'root'             => 'required|max:80',
            'buying_price'     => 'required|max:80',
            'selling_price'    => 'required|max:80',
            'buying_date'      => 'required|max:80',
            // 'expired_date'      => 'required|max:80',
            'productType' => 'required',
            'product_quantity' => 'required',
        ]);

        if ($request->image) {
            $position = strpos($request->image, ';');
            $sub = substr($request->image, 0, $position);
            $ext = explode('/', $sub)[1];

            $name = time().'.'.$ext;
            $img = Image::make($request->image)->resize(240, 200);

            $upload_path = env('FILE_PATH').'backend/product/';
            $image_url = $upload_path.$name;
            $img->save($image_url);

            $product = new Product;
            $product->category_id = $request->category_id;
            $product->supplier_id = $request->supplier_id;
            $product->product_name = $request->product_name;
            $product->product_code = $request->product_code;
            $product->root = $request->root;
            $product->buying_price = $request->buying_price;
            $product->selling_price = $request->selling_price;
            $product->buying_date = $request->buying_date;
            $product->expired_date = $request->expired_date;
            $product->product_type = $request->productType;
            $product->product_quantity = $request->product_quantity;
            $product->image = $image_url;
            $product->save();
        } else {
            $product = new Product;
            $product->category_id = $request->category_id;
            $product->supplier_id = $request->supplier_id;
            $product->product_name = $request->product_name;
            $product->product_code = $request->product_code;
            $product->root = $request->root;
            $product->buying_price = $request->buying_price;
            $product->selling_price = $request->selling_price;
            $product->buying_date = $request->buying_date;
            $product->expired_date = $request->expired_date;
            $product->product_type = $request->productType;
            $product->product_quantity = $request->product_quantity;
            $product->save();
        }

        return $product = add_more_quentity($product->id,$product->product_quantity,'new');


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        // $product = Product::findOrFail($id);
        return response()->json($product);
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function product_code(Request $request,$product_code)
    {
        // return response()->json($product_code);

         $count = Product::where(['product_code'=>$product_code,'product_type'=>'normal'])->count();
         if($count<=0){

             return response()->json(0);
         }
         $product = Product::where(['product_code'=>$product_code,'product_type'=>'normal'])->get();
        return response()->json($product);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,Product $product)
    {
       $id = $product->id;
        $request->validate([
            'category_id'      => 'required',
            'supplier_id'      => 'required',
            'product_name'     => 'required',
            'product_code'     => 'required|max:80',
            // 'root'             => 'required|max:80',
            'buying_price'     => 'required|max:80',
            'selling_price'    => 'required|max:80',
            'buying_date'      => 'required|max:80',
            // 'expired_date'      => 'required|max:80',
            'product_quantity' => 'required',
        ]);

        $product = Product::findOrFail($id);
        $product->category_id = $request->category_id;
        $product->supplier_id = $request->supplier_id;
        $product->product_name = $request->product_name;
        $product->product_code = $request->product_code;
        $product->root = $request->root;
        $product->buying_price = $request->buying_price;
        $product->selling_price = $request->selling_price;
        $product->buying_date = $request->buying_date;
        $product->expired_date = $request->expired_date;
        $product->product_quantity = $request->product_quantity;

        if ($image = $request->newImage) {
            $position = strpos($image, ';');
            $sub = substr($image, 0, $position);
            $ext = explode('/', $sub)[1];

            $name = time().'.'.$ext;
            $img = Image::make($image)->resize(240, 200);

            $upload_path =  env('FILE_PATH').'backend/product/';
            $image_url = $upload_path.$name;
            $newImage = $img->save($image_url);

            if ($newImage) {
                unlink($product->image);

                $product->image = $image_url;
                $product->save();
            }

        } else {
            $product->save();
        }
        return $product;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        $image = $product->image;

      if(File::exists($image)){
        unlink($image);
        $product->delete();
    }else{
        $product->delete();
    }


    }

    public function updateStock($id)
    {
        request()->validate([
            'product_quantity' => 'required|numeric'
        ]);
        $product = Product::findOrFail($id);
        $product->product_quantity = request()->product_quantity;
        $product->save();
    }


    public function search(Request $request)
    {
        $data = $request->filter['product_name'];


        $columns = ['product_name','product_code'];

        // $query = Product::select('*');



    // return    $models = $query->get();


        // $cases = DB::table('products')
        // ->where(function($query) use ($data)
        // {
        //     $query->whereRaw('*', 'like', '%'.$data.'%');
        // })
        // ->get();



        // return $cases;
// return $request->availble;
        // $result = QueryBuilder::for(Product::class)
        $result =  Product::select('*')
        ->join('categories', 'products.category_id', 'categories.id')
        // ->join('suppliers', 'products.supplier_id', 'suppliers.id')
        ->select('products.*', 'categories.category_name')
        ->orderBy('products.id', 'desc');



            if($request->availble==true){
                $result->where('product_quantity','>',0);
            }else{
                foreach($columns as $column)
                {
                  $result->orWhere($column, 'like','%'.$data.'%');
                }


                // $result->allowedFilters([AllowedFilter::exact('category_id'),AllowedFilter::exact('product_quantity'), 'supplier_id','product_name','product_code','root','buying_price','selling_price','buying_date','image',AllowedFilter::exact('id')]);
            }


       $data = $result->paginate(25);


        // $result = QueryBuilder::for(Product::class)
        // ->allowedFilters(['category_id', 'supplier_id','product_name','product_code','root','buying_price','selling_price','buying_date','image','product_quantity',AllowedFilter::exact('id')])
        // ->paginate(10);
        return response()->json($data);
    }



    public function stockCheck(Request $request)
    {
        $result = QueryBuilder::for(Product::class)
        ->join('categories', 'products.category_id', 'categories.id')
        // ->join('suppliers', 'products.supplier_id', 'suppliers.id')
        ->select('products.*', 'categories.category_name')
        ->orderBy('products.id', 'desc');
        if($request->availble==true){
            $result->where('product_quantity','>',0);
        }else{
            $result->allowedFilters([AllowedFilter::exact('category_id'),AllowedFilter::exact('product_quantity'), 'supplier_id','product_name','product_code','root','buying_price','selling_price','buying_date','image',AllowedFilter::exact('id')]);
        }


   $data = $result->paginate(25);

    return response()->json($data);
    }


    public function expired(Request $request)
    {


        $today = date('Y-m-d');
    //   return  Product::where('expired_date','<',$today)->get();


// return $request->availble;
        $result = QueryBuilder::for(Product::class)
        ->join('categories', 'products.category_id', 'categories.id')
        // ->join('suppliers', 'products.supplier_id', 'suppliers.id')
        ->select('products.*', 'categories.category_name')
        ->where('expired_date','<',$today)
        ->orderBy('products.id', 'desc');


            if($request->availble==true){
                $result->where('product_quantity','>',0);
            }else{

                $result->allowedFilters([AllowedFilter::exact('category_id'),AllowedFilter::exact('product_quantity'), 'supplier_id','product_name','product_code','root','buying_price','selling_price','buying_date','image',AllowedFilter::exact('id')]);
            }


       $data = $result->paginate(10);


        // $result = QueryBuilder::for(Product::class)
        // ->allowedFilters(['category_id', 'supplier_id','product_name','product_code','root','buying_price','selling_price','buying_date','image','product_quantity',AllowedFilter::exact('id')])
        // ->paginate(10);
        return response()->json($data);
    }


    function update_product_quantity(Request $request) {


        $id = $request->id;
        $product_quantity = $request->product_quantity;

      return  add_more_quentity($id,$product_quantity);


    }







}
