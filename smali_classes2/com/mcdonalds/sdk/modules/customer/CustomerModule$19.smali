.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$19;
.super Landroid/database/ContentObserver;
.source "CustomerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCatalogUpdated(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Landroid/os/Handler;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$19;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$19;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 854
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 859
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$19;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isSyncActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$19;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, v1, v1, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 861
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$19;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->removeSyncListener(Landroid/database/ContentObserver;)V

    .line 863
    :cond_0
    return-void
.end method
