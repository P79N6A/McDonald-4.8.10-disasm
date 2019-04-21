.class Lcom/mcdonalds/app/ordering/PaymentProviderFragment$3;
.super Ljava/lang/Object;
.source "PaymentProviderFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$3;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

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

    .line 132
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$3;->onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v3, "onResponse"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$3;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 136
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "url":Ljava/net/URL;
    if-eqz p1, :cond_0

    .line 141
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "url":Ljava/net/URL;
    .local v2, "url":Ljava/net/URL;
    move-object v1, v2

    .line 147
    .end local v2    # "url":Ljava/net/URL;
    .restart local v1    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 148
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$3;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->access$200(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 153
    .end local v1    # "url":Ljava/net/URL;
    :cond_1
    :goto_1
    return-void

    .line 142
    .restart local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance p3, Lcom/mcdonalds/sdk/AsyncException;

    .end local p3    # "exception":Lcom/mcdonalds/sdk/AsyncException;
    const-string v3, "Invalid Payment Provider URL"

    invoke-direct {p3, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .restart local p3    # "exception":Lcom/mcdonalds/sdk/AsyncException;
    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_2
    if-eqz p3, :cond_1

    .line 150
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method
