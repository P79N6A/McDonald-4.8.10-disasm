.class Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;
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
    name = "AsyncListenerWrapper"
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
.field private mCounter:Lcom/mcdonalds/sdk/AsyncCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncCounter",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mOrigin:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<TT;>;",
            "Lcom/mcdonalds/sdk/AsyncCounter",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper<TT;>;"
    .local p2, "origin":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<TT;>;"
    .local p3, "counter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;->this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;->mOrigin:Lcom/mcdonalds/sdk/AsyncListener;

    .line 478
    iput-object p3, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;->mCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    .line 479
    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
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
    .line 484
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;->mCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;->mOrigin:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;->mOrigin:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 488
    :cond_0
    return-void
.end method
