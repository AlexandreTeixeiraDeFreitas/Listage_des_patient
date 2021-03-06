const router = require('express-promise-router')();

const {patient, add_patient, del_patient, modif_patient} = require('../controllers/patient')

router.route('/patient')
    .get(patient);

router.route('/patient/add_patient/:nom/:prenom/:age/:taille/:poids')
    .get(add_patient);

router.route('/patient/del_patient/:id')
    .get(del_patient);

router.route('/patient/modif_patient/:id/:nom/:prenom/:age/:taille/:poids')
    .get(modif_patient);

module.exports = router;