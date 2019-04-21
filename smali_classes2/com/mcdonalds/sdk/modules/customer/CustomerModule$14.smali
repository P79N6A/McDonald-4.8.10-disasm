.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSocialNetworkAccessToken(ILjava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 685
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 687
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, v1, v2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 691
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-static {v0, v1, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$300(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 692
    return-void

    .line 689
    :cond_0
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 682
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWWechatTokenResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
