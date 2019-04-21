.class Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2$1;
.super Ljava/lang/Object;
.source "StoreLocatorModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2$1;->this$1:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 215
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2$1;->this$1:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2$1;->this$1:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;

    iget-object v1, v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2$1;->this$1:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;

    iget-object v3, v3, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 216
    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->access$000(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/mcdonalds/sdk/R$string;->error_no_location_try_address:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-interface {v0, v5, v1, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 217
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2$1;->this$1:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-static {v0, v5}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->access$102(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/util/Timer;)Ljava/util/Timer;

    .line 218
    return-void
.end method
