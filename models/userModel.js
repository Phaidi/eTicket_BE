const Sequelize = require('sequelize')
const sequelize =  require("../config/db") 
const bcrypt = require('bcryptjs');

const User = sequelize.define('user',{
    id:{
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },

    name:{
        type: Sequelize.STRING,
        allowNull: false,
        validate:{
            isAlpha: {args: true, msg: "name contains invalid characters" }
        }
    },

    email: {
        type: Sequelize.STRING , 
        allowNull: false,
        unique:true,
        validate:{
            isEmail : true
        },
    },
    userType:{
        type: Sequelize.STRING,
        defaultValue: 'user',
        allowNull: false,
    },

    password:{
       type: Sequelize.STRING,
       allowNull: false,
       validate:{
        len: { args:[6,10], msg:"Password should be between 6 to 10 characters"}
       }
    },
    // confirmPassword: {
    //     type: Sequelize.STRING,
    //     allowNull:false,
    //     validate: {
           
    //             validator(){
    //                 if(this.password !== this.confirmPassword) throw new Error(`Password do not match`)
    //             }
           
          
    //     }
    // },

    
    createdAt: Sequelize.DATE,
    updatedAt: Sequelize.DATE,
     

})



  
User.beforeCreate(async (user, options) => {
  
    user.password = await bcrypt.hash(user.password, 12);
    // console.log("im in the beforeCreate hook User", options, user)
  });



module.exports = User;


