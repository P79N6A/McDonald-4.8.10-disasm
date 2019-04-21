.class Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
.super Ljava/lang/Object;
.source "RequestManagerServiceConnection.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorCheckListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mOrigin:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

.field final synthetic this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .param p2, "requestProvider"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/services/network/RequestProvider;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper<TT;>;"
    .local p3, "origin":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 498
    iput-object p3, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->mOrigin:Lcom/mcdonalds/sdk/AsyncListener;

    .line 499
    return-void
.end method


# virtual methods
.method public getOrigin()Lcom/mcdonalds/sdk/AsyncListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->mOrigin:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method public onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 508
    .local v0, "notifyOriginListener":Z
    if-nez p3, :cond_1

    instance-of v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;

    if-eqz v1, :cond_1

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    invoke-static {v1, v2, p0, p1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->access$300(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;Ljava/lang/Object;)Z

    move-result v0

    .line 516
    :cond_1
    if-eqz p3, :cond_2

    .line 517
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->mRequestProvider:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    invoke-interface {v1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getURLString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/mcdonalds/sdk/AsyncException;->setRequestUrl(Ljava/lang/String;)V

    .line 521
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->mOrigin:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v1, :cond_3

    .line 522
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->mOrigin:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 524
    :cond_3
    return-void
.end method
