.class public Lcom/mcdonalds/sdk/BlockingListener;
.super Ljava/lang/Object;
.source "BlockingListener.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
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
.field mException:Lcom/mcdonalds/sdk/AsyncException;

.field mResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/mcdonalds/sdk/BlockingListener;, "Lcom/mcdonalds/sdk/BlockingListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/mcdonalds/sdk/AsyncException;
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/mcdonalds/sdk/BlockingListener;, "Lcom/mcdonalds/sdk/BlockingListener<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 20
    iget-object v0, p0, Lcom/mcdonalds/sdk/BlockingListener;->mException:Lcom/mcdonalds/sdk/AsyncException;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/mcdonalds/sdk/BlockingListener;->mException:Lcom/mcdonalds/sdk/AsyncException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 23
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/BlockingListener;->mResponse:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 1
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
    .line 13
    .local p0, "this":Lcom/mcdonalds/sdk/BlockingListener;, "Lcom/mcdonalds/sdk/BlockingListener<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/BlockingListener;->mResponse:Ljava/lang/Object;

    .line 14
    iput-object p3, p0, Lcom/mcdonalds/sdk/BlockingListener;->mException:Lcom/mcdonalds/sdk/AsyncException;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
