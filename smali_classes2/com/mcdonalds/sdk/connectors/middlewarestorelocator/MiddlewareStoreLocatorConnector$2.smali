.class Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$2;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$token:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$2;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$2;->val$token:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$2;->val$token:Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Address lookup unavailable on this device"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 180
    return-void
.end method
