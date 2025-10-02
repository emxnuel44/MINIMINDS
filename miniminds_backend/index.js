const express = require('express');
const app = express();
const cors = require('cors');
const categoriaRoutes = require('./routes/categorias');
const autenticacionRoutes = require('./routes/autenticacion');



//importante para conexion del front con el back
//Uso de cors
app.use(cors({origin: '*'}));
// conectar con el link de su frontend app.use(cors({origin: 'https://ppi-app.vercel.app/'}))
app.set('port' ,process.env.PORT || 4001);

app.use(express.json());


//rutas
app.use('/api/categorias', categoriaRoutes);
app.use('/api/auth', autenticacionRoutes);



app.listen(app.get('port'), () => {
    console.log(`Server on port ${app.get('port')}`);
});