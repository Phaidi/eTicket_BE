const app = require('./app')
const dotenv = require('dotenv'); //FOR READING .env file
const {Sequelize} = require('sequelize')
dotenv.config({ path: './.env' }); //FOR GETTING PATH OF .env file
const sequelize = require('./config/db')


sequelize.sync()
// sequelize.sync({alter:true})





const port = process.env.PORT || 4242;
app.listen(port,()=>{
    console.log(`Application running on port ${port}`)
})