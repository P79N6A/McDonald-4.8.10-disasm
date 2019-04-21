.class public Lcom/mcdonalds/sdk/AsyncCounter;
.super Ljava/lang/Object;
.source "AsyncCounter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private finished:Z

.field private mCount:I

.field private mListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mMax:I

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .param p1, "finalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<TT;>;"
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<TT;>;>;"
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mMax:I

    .line 19
    iput v1, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mCount:I

    .line 20
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/AsyncCounter;->finished:Z

    .line 23
    if-gez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max Count < 0!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mcdonalds/sdk/AsyncCounter$1;

    invoke-direct {v1, p0, p2}, Lcom/mcdonalds/sdk/AsyncCounter$1;-><init>(Lcom/mcdonalds/sdk/AsyncCounter;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_1
    iput p1, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mMax:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mObjects:Ljava/util/List;

    .line 39
    iput-object p2, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    goto :goto_0
.end method


# virtual methods
.method public error(Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<TT;>;"
    const/4 v2, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->finished:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncCounter: Failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->finished:Z

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, v2, v2, p1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "AsyncCounter: Failure"

    goto :goto_1
.end method

.method public hasActiveProcesses()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<TT;>;"
    iget v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public incrementMax()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<TT;>;"
    iget v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mMax:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mMax:I

    .line 79
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 43
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->finished:Z

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mCount:I

    .line 49
    iget v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mCount:I

    iget v1, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mMax:I

    if-le v0, v1, :cond_2

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncCounter has exceeded maximum iterations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    if-eqz p1, :cond_3

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_3
    iget v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mCount:I

    iget v1, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mMax:I

    if-ne v0, v1, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->finished:Z

    .line 60
    iget-object v0, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/AsyncCounter;->mObjects:Ljava/util/List;

    invoke-interface {v0, v1, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
