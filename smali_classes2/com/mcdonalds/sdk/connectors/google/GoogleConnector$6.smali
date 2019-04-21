.class Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$6;
.super Ljava/lang/Object;
.source "GoogleConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->requestStoreFilters(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$token:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$6;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$6;->val$token:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->access$000(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;)V

    .line 225
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->access$100(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$6;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$6;->val$token:Lcom/mcdonalds/sdk/AsyncToken;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 227
    return-void
.end method
