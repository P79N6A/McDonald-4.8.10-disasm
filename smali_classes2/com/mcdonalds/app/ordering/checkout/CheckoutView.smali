.class public interface abstract Lcom/mcdonalds/app/ordering/checkout/CheckoutView;
.super Ljava/lang/Object;
.source "CheckoutView.java"


# virtual methods
.method public abstract navigateToAccountCardsPage()V
.end method

.method public abstract navigateToDashboard()V
.end method

.method public abstract navigateToSignIn()V
.end method

.method public abstract setZeroPricedOrder(Z)V
.end method

.method public abstract showFatalError(Ljava/lang/String;)V
.end method

.method public abstract showLargeOrderWarning()V
.end method

.method public abstract showMaxCardsAlert()V
.end method

.method public abstract showNoPaymentSelectedError()V
.end method

.method public abstract showOrderErrors(IILjava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract showOutOfStockAlert(I)V
.end method

.method public abstract showPaymentSelection(Ljava/util/LinkedHashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showPickupMethodSelector()V
.end method

.method public abstract showZeroOrNegativePriceError()V
.end method

.method public abstract startInterinCheckinFlow()V
.end method

.method public abstract startOneTimePaymentCheckinFlow()V
.end method

.method public abstract startRegularCheckinFlow()V
.end method
