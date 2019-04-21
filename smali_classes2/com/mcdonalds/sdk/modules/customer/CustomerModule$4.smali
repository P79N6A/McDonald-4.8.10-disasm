.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCurrentStoreInfo(Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "asyncToken"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "e"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 361
    if-nez p3, :cond_0

    .line 362
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$000(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mergeWithEcpInfo(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 363
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$100(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    .line 365
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$200(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$CurrentStore;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 366
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 372
    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 358
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
