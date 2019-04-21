//@prepros-prepend test.js;
//@prepros-append test.js;
// Need setting output path in prepros

$(function() {
	card = {
		number: function() {
			var _input = $('#input_card-number');
			_input.on('keypress change', function () {
			  $(this).val(function (index, value) {
				  return value.replace(/\W/gi, '').replace(/(.{4})/g, '$1 ');
			  });
			});
		},
		code: function() {
			var _input = $('#input_security-code');
			_input.keyup(function() {
			    _input.val(this.value.match(/[0-9]*/));
			});
		},
		init: function() {
			//card.code();
			card.number();
		}
	}
	var init = function() {
		card.init();
	}
	init();

}(jQuery))

if (self === top) {
    var antiClickjack = document.getElementById("antiClickjack");
    antiClickjack.parentNode.removeChild(antiClickjack);
} else {
    top.location = self.location;
}
PaymentSession.configure({
     fields: {
         // ATTACH HOSTED FIELDS TO YOUR PAYMENT PAGE FOR A CREDIT CARD
         card: {
             nickname: "#input_card-nickname",
             number: "#input_card-number",
             securityCode: "#input_security-code",
             expiryMonth: "#input_expiry-month",
             expiryYear: "#input_expiry-year"
         }
     },
     //SPECIFY YOUR MITIGATION OPTION HERE
     frameEmbeddingMitigation: ["javascript"],
     callbacks: {
         initialized: function(response) {
             // HANDLE INITIALIZATION RESPONSE
             console.log("Session updated with data: initialized");
         },
         formSessionUpdate: function(response) {
            // HANDLE RESPONSE FOR UPDATE SESSION

             if (response.status) {
                if ("ok" == response.status) {
                    console.log("Session updated with data: " + response.session.id);
                     // check if the security code was provided by the user
                     if (response.sourceOfFunds.provided.card.securityCode) {
                        console.log("Security code was provided.");
                     }

                     //check if the user entered a MasterCard credit card
                     if (response.sourceOfFunds.provided.card.scheme == 'MASTERCARD') {
                        console.log("The user entered a MasterCard credit card.")
                     }
                     $('#payButton').prop('disabled', false);
                     sessionUpdate(response.session.id, 0, response.sourceOfFunds.provided.card.scheme);
                } else if ("fields_in_error" == response.status)  {
                     var errorCode = 0;
                     console.log("Session update failed with field errors.");
                     if (response.errors.cardNumber) {
                        console.log("Card number invalid or missing.");
                        errorCode = errorCode + 1;
                     }
                     if (response.errors.expiryYear) {
                        console.log("Expiry year invalid or missing.");
                        errorCode = errorCode + 2;
                     }
                     if (response.errors.expiryMonth) {
                        console.log("Expiry month invalid or missing.");
                        errorCode = errorCode + 4;
                     }
                     if (response.errors.securityCode) {
                        console.log("Security code invalid.");
                        errorCode = errorCode + 8;
                     }
                     sessionUpdate(null, errorCode);
                     $('#payButton').prop('disabled', false);
                 } else if ("request_timeout" == response.status)  {
                     console.log("Session update failed with request timeout: " + response.errors.message);
                     sessionUpdate(0, 16);
                     $('#payButton').prop('disabled', false);
                 } else if ("system_error" == response.status)  {
                     console.log("Session update failed with system error: " + response.errors.message);
                     sessionUpdate(0, 32);
                     $('#payButton').prop('disabled', false);
                 }
             } else {
                 console.log("Session update failed: " + response);
                 $('#payButton').prop('disabled', false);
             }
         }
     }
     });
$( ".gw-proxy-number" ).css( "width", "100%" );
function pay() {
     // UPDATE THE SESSION WITH THE INPUT FROM HOSTED FIELDS
     PaymentSession.updateSessionFromForm('card');
     $('#payButton').prop('disabled', true);
}
function sessionUpdate(sessionID, errorCode, scheme) {
    if(document.getElementById("input_card-nickname") && document.getElementById("input_card-nickname").value)
    {
        paymentBridge.onSessionUpdate(sessionID, errorCode, scheme, document.getElementById('input_card-nickname').value);
    } else {
        paymentBridge.onSessionUpdate(sessionID, errorCode, scheme, "");
    }
}
