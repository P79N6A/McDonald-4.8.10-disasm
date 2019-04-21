.class Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;
.super Ljava/util/TimerTask;
.source "StoreLocatorModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresNearCurrentLocationWithinRadius(Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Landroid/os/Handler;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p4, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2$1;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method
