const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	this.on('READ', 'NorthWindProduct', async(req) =>{
		const srv = await cds.connect.to("NorthWind");
		const {Products} = srv.entities;
		const tx = srv.tx(req);
		const products = await tx.run(SELECT.from(Products));
		return products;
	});
}); 