const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	this.on('READ', 'Products', async(req) =>{
		console.log("user: ", req.user);
		console.log("user id: ", req.user.id);
		console.log("reqinfo: ", req.authInfo);
		console.log("is authenticated: ", req.user.is('authenticated-user'));
		
		const srv = await cds.connect.to("NorthWind");
		const {Products} = srv.entities;
		const tx = srv.tx(req);
		const products = await tx.run(SELECT.from(Products));
		return products;
	});
}); 