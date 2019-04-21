.class Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;
.super Ljava/lang/Object;
.source "PaymentProviderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/PaymentProviderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/ordering/PaymentProviderFragment;
    .param p2, "x1"    # Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;-><init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)V

    return-void
.end method


# virtual methods
.method public processResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "html"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v3, "processResult"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 164
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "jsonCardInfo":Ljava/lang/String;
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 166
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->access$300(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 169
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v2, "resultData":Landroid/content/Intent;
    const-string v3, "EXTRA_ONE_TIME_PAYMENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 172
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 182
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v1    # "jsonCardInfo":Ljava/lang/String;
    .end local v2    # "resultData":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .restart local v1    # "jsonCardInfo":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-static {v3, v0, v1}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->access$400(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v1    # "jsonCardInfo":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isOneClickPaymentFlow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    const-string v4, "RegisterRequest Error = response is empty"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/16 v4, 0x3ca1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 180
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
