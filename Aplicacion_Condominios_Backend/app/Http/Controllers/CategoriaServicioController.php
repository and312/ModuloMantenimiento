<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CategoriaServicio;

class CategoriaServicioController extends Controller
{
    //
    public function getCategoriaServicio(){
            return response()->json(CategoriaServicio::all(), 200);
    }
    public function getCategoriaId($id){
        $categoria = CategoriaServicio::find($id);
        if(is_null($categoria)){
            return response() -> json(["message"=>"Registro no encontrado"], 404);
        }
        return response()->json($categoria, 200);
    }
    public function insertarCategoria(Request $request){
        $categoria = CategoriaServicio::create($request->all());
        if(is_null($categoria)){
            return response() -> json(["message"=>"Hubo problemas al registrar"], 404);
        }
        return response()->json($categoria,200);
    }

    public function updateCategoria(Request $request, $id){
        $categoria = CategoriaServicio::find($id); 
        if(is_null($categoria)){
            return response() -> json(["message"=>"Registro no encontrado"], 404);
        }
        $categoria->update($request->all());
        return response()->json($categoria,200);
    }

    //delete

    public function deleteCategoria($id){
        $categoria = CategoriaServicio::find($id); 
        if(is_null($categoria)){
            return response() -> json(["message"=>"Registro no encontrado"], 404);
        }
        $categoria->delete();
        return response()->json(["message"=>"Registro eliminado"],200);
    }
}
