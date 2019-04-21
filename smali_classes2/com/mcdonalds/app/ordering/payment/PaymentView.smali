.class public interface abstract Lcom/mcdonalds/app/ordering/payment/PaymentView;
.super Ljava/lang/Object;
.source "PaymentView.java"


# virtual methods
.method public abstract backToBasket()V
.end method

.method public abstract continueToBagCharges()V
.end method

.method public abstract continueToOrderSummary()V
.end method

.method public abstract continueToTableServices()V
.end method

.method public abstract finish()V
.end method

.method public abstract getActivityForAlipay()Landroid/app/Activity;
.end method

.method public abstract openThirdPartyPaymentUrl(Ljava/lang/String;)V
.end method

.method public abstract requestCVV(I)V
.end method

.method public abstract requestPassword()V
.end method

.method public abstract requestPaymentInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract scanQRCode()V
.end method

.method public abstract showActivityIndicator(I)V
.end method

.method public abstract showCashNotAcceptedAtCurbsideError()V
.end method

.method public abstract showFatalError(Ljava/lang/String;)V
.end method

.method public abstract showFatalError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showInvalidQRCodeError()V
.end method

.method public abstract showInvalidRestaurantError()V
.end method

.method public abstract showLargeOrderAlert()V
.end method

.method public abstract showOrderErrors(IILjava/util/List;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract showOrderNotReadyError()V
.end method

.method public abstract showOrderNotReadyToAcceptError()V
.end method

.method public abstract showOrderUnavailableAtPODError()V
.end method

.method public abstract showPaymentChooser(Ljava/lang/String;)V
.end method

.method public abstract showPaymentError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showPaymentSelection(Ljava/util/LinkedHashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showRestaurantMismatchError()V
.end method

.method public abstract stopActivityIndicator()V
.end method
