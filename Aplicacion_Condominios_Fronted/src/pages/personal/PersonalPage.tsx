import React, { useEffect, useState } from "react";
import "./style.css";
import { TextField, MenuItem } from '@mui/material';
import CreateOutlinedIcon from "@mui/icons-material/CreateOutlined";
import DeleteOutlinedIcon from "@mui/icons-material/DeleteOutlined";


import Box from '@mui/material/Box';


const currencies = [
  
  {
    value: '1',
    label: 'Electricidad',
  },
  {
    value:'2',
    label: 'Plomeria',
  },
  {
    value:'3',
    label: 'Construcción',
  },
  {
    value: '4',
    label: 'otro',
  },
];

export default function PersonalPage () {
  
  return (
    <>
     <Box
      component="form"
      sx={{
        '& .MuiTextField-root': { m: 1, width: '40ch', display:'flex' },
      }}
      
      noValidate
    >
      <div id="content">

      
      <h2>Personal de servicio externo</h2>
      <div 
      
      className="d-flex a-center d-column"
      >
        <div >
        <TextField
          required
          id="outlined"
          label="Nombre"
          defaultValue="Ingrese nombre"
        />
        <TextField
          required
          id="outlined"
          label="Telefono"
          defaultValue="Ingrese telefono"
        />
        <TextField
          required
          id="outlined"
          label="Dirección"
          defaultValue="Ingrese dirección"
        />
        <TextField
           id="outlined-select-currency"
          select
          label="Tipo de Servicio"
          defaultValue="1"
          helperText="Por favor seleccione el tipo de servicio"
        >
          {currencies.map((option) => (
            <MenuItem key={option.value} value={option.value}>
              {option.label}
            </MenuItem>
          ))}
        </TextField>

        </div>
        <button className="block" type="submit">Registrar</button>

        
      </div>
      <div className="row">
      <div className="col">
        <table className="table table-striped">
          <thead>
            <tr>
              <th className="left">Nombre</th>
              <th className="left">Telefono</th>
              <th className="left">Dirección</th>
              <th className="left">Servicio</th>
              <th className="righ">Acciones</th>
            </tr>
          </thead>
          <tbody>
            
              <tr>
               <td>Pedro Perez</td>
               <td>68484983</td>
               <td>Villa Aurora</td>
               <td>Electricidad</td>
               <td className="actions">
                  <button type="button" >
                    <CreateOutlinedIcon className="c-dark-blue" fontSize="large" />
                  </button>
                  <button
                    type="button"
                    
                  >
                    <DeleteOutlinedIcon  className="c-dark-blue " fontSize="large" />
                  </button>
                </td>
              </tr>
            
          </tbody>
        </table>
      </div>
    </div>
    </div>
      </Box>
     
    </>
  );
};
