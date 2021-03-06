const pool = require('../config/database');

module.exports = {

    patient: async (req, res, next) => {
        let connexion;
        try {
            connexion = await pool.getConnection();
            const result = await connexion.query('Select * from patient;');
            console.log(result);
            return res.status(200).json(result)
        } catch (error) {
            return res.status(400).json({ error: error.message });
        } finally {
            if (connexion) connexion.end()
        }
    },
    add_patient: async (req, res, next) => {
        let connexion;
        try {
            connexion = await pool.getConnection();
            const nom = req.params.nom
            console.log(nom)
            const prenom = req.params.prenom
            const age = req.params.age
            const taille = req.params.taille
            const poids = req.params.poids
            const result = await connexion.query('CALL add_patient("'+nom+'", "'+prenom+'", "'+age+'", "'+taille+'", "'+poids+'");');
            console.log(result);
            return res.status(200).json(result)
        } catch (error) {
            return res.status(400).json(error.message);
        } finally {
            if (connexion) connexion.end()
        }
    },

    del_patient: async (req, res, next) => {
        let connexion;
        try {
            const id = parseInt(req.params.id)
            connexion = await pool.getConnection();
            const result = await connexion.query(' CALL del_patient('+id+');');
            console.log(result);
            return res.status(200).json(result)
        } catch (error) {
            return res.status(400).json(error.message);
        } finally {
            if (connexion) connexion.end()
        }
    },
    
    modif_patient: async (req, res, next) => {
        let connexion;
        try {
            connexion = await pool.getConnection();
            const id = parseInt(req.params.id)
            const nom = req.params.nom
            const prenom = req.params.prenom
            const age = req.params.age
            const taille = req.params.taille
            const poids = req.params.poids
            const result = await connexion.query('CALL modif_patient("'+id+'","'+nom+'", "'+prenom+'", "'+age+'", "'+taille+'", "'+poids+'");');
            console.log(result);
            return res.status(200).json(result)
        } catch (error) {
            return res.status(400).json(error.message);
        } finally {
            if (connexion) connexion.end()
        }
    },




}