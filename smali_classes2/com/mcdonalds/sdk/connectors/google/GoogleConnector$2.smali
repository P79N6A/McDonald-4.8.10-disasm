.class Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$2;
.super Ljava/lang/Object;
.source "GoogleConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$2;->this$0:Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$2;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$2;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$2;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$2;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Address lookup unavailable on this device"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 111
    return-void
.end method
