.class Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;
.super Ljava/lang/Object;
.source "MPGSPaymentFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 108
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;->onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    const-string v0, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v5, 0x2

    aput-object p3, v3, v5

    invoke-static {p0, v0, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 113
    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    new-instance v3, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-direct {v3, v5, p1}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;-><init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->access$102(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;)Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;

    .line 115
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->access$100(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->getMerchantId()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "merchantId":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v3, "supportedPaymentMethods.mpgs.libraryURL"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "libURL":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-static {v0, v6}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->access$200(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "mpgsHtml":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$2;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->access$300(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v3, "text/html"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v1    # "libURL":Ljava/lang/String;
    .end local v2    # "mpgsHtml":Ljava/lang/String;
    .end local v6    # "merchantId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p3, :cond_0

    .line 124
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
