const cds = require('@sap/cds');
const {Books} = cds.entities;

    module.exports = srv => {

       const db = cds.db;

// READ : SELECT
// CREATE : INSERT
// UPDATE : UPDATE
// DELETE : DELETE

// READ
    srv.on('READ', 'bookSet', async (req,resp)=>{
        results = [];

            results = await db.run([
            SELECT.from(Books).where({ID : req.data. ID})
                    ]);

                return results;

                    });
    }