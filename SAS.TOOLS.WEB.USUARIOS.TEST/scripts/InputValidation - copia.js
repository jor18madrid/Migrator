function  formValitation() {


$('#formulario').validate({

    rules:{
        "PRIMER_NOMBRE":{
            required: true,
            minlength: 5,
            // emailSefin: true
        }
    },
    messages:{
        "PRIMER_NOMBRE":{
            required: "this field is required",
            minlength: "this field must contain at least {0} characters",
        }
    }
});

    
}