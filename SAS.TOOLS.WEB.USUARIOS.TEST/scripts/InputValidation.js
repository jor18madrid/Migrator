
$(function () {
debugger
$.validator.addMethod("emailSefin", function (value, element) {
    debugger
    var regex = /^[a-z][a-zA-Z0-9_]*(\.[a-zA-Z][a-zA-Z0-9_]*)?@[a-z][a-zA-Z-0-9]*\.[a-z]+(\.[a-z]+)?$/;
    return regex.test(value);
}, 'El campo Correo no es una dirección de correo electrónico válida.');

$('#formulario').validate({
    ignore: ":disabled",
    onfocusout: function (element) {
        this.element(element);
    },
    rules:{
        "CORREO":{
            required: true,
            email: true

            // emailSefin: true
        }
    },
    messages:{
        "CORREO":{
            required: "Este campo es requerido",
        }
    },highlight: function (element) {
        debugger
        $(element).parents('.col-sm-3').addClass('has-error text-danger');
    },
    unhighlight: function (element) {
        $(element).parents('.col-sm-3').removeClass('has-error text-danger');
    }

});

    
});
