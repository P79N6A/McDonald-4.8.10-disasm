.class public Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;
.source "PODUnavailableCheckoutAlertFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mMessage:Landroid/widget/TextView;

.field private mQRCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;-><init>()V

    return-void
.end method

.method private checkIn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "checkIn"

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0901f0

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 85
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->mQRCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v2, p0}, Lcom/mcdonalds/app/ordering/OrderingManager;->checkIn(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 86
    return-void
.end method

.method private checkUnavailablePODs()V
    .locals 4

    .prologue
    const-string v2, "checkUnavailablePODs"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getOrderUnavailablePODs(Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getUnavailablePODMessage(Ljava/util/List;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentResourceId()I
    .locals 2

    .prologue
    const-string v0, "getFragmentResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const v0, 0x7f04009e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->checkUnavailablePODs()V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 39
    const-string v1, "qr_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->mQRCode:Ljava/lang/String;

    .line 41
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/alert/checkout/CheckoutAlertFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f11027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->mMessage:Landroid/widget/TextView;

    .line 50
    return-object v0
.end method

.method public onPositiveButtonClicked()V
    .locals 2

    .prologue
    const-string v0, "onPositiveButtonClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->checkIn()V

    .line 81
    return-void
.end method

.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 91
    if-nez p3, :cond_0

    .line 92
    const-class v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryActivity;

    const-string v1, "order_summary"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/alert/checkout/PODUnavailableCheckoutAlertFragment;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
