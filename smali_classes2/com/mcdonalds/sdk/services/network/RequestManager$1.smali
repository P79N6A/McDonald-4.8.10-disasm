.class Lcom/mcdonalds/sdk/services/network/RequestManager$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/network/RequestManager;->clearRequestQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/network/RequestManager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/network/RequestManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/network/RequestManager;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManager$1;->this$0:Lcom/mcdonalds/sdk/services/network/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/volley/Request;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    const/4 v0, 0x1

    return v0
.end method
