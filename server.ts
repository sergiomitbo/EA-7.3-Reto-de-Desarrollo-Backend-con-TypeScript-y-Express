import express from 'express';
import type { Request, Response } from 'express';
import mysql from 'mysql2/promise';
import type { RowDataPacket } from 'mysql2'; 
import dotenv from 'dotenv';

dotenv.config();


const app = express();
const PORT = process.env.PORT || 3000;


interface IViaje extends RowDataPacket {
    id: number;
    destino: string;
    precio_creditos: number;
    paradoja_resuelta: boolean;
    fecha_viaje: Date;
}


const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME
});


app.get('/', (req: Request, res: Response) => {
    res.send(`
        <h1>🛸 Bienvenido a la Agencia de Viajes en el Tiempo 🛸</h1>
        <p>Usa la ruta <strong>/api/datos</strong> para ver nuestro catálogo tipado con TypeScript.</p>
    `);
});

app.get('/api/datos', async (req: Request, res: Response) => {
    try {
    
        const [rows] = await pool.query<IViaje[]>('SELECT * FROM viajes_temporales');
        res.json(rows);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Error al conectar con la base de datos temporal' });
    }
});

app.listen(PORT, () => {
    console.log(`🚀 Servidor corriendo en http://localhost:${PORT}`);
});