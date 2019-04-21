.class Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$5;
.super Ljava/lang/Object;
.source "StoreLocatorModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->commonStoresWithLocation(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$5;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$5;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$5;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->access$500(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$5;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 459
    return-void
.end method
