.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getDefaultAddress(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
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
    .line 1522
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v2, 0x0

    .line 1525
    if-nez p3, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, p1, v1, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1530
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-static {v0, v1, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$300(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1531
    return-void

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, v2, v1, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 1522
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;->onResponse(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
