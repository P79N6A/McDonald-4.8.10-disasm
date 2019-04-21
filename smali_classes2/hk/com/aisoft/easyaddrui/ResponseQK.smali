.class public Lhk/com/aisoft/easyaddrui/ResponseQK;
.super Ljava/lang/Object;
.source "ResponseQK.java"


# instance fields
.field sPage:Ljava/lang/String;

.field sResponseAddrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhk/com/aisoft/easyaddrui/ResponseAddr;",
            ">;"
        }
    .end annotation
.end field

.field sType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseQK;->sPage:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method protected setReponseAddr(Lhk/com/aisoft/easyaddrui/ResponseQK;)V
    .locals 3
    .param p1, "mResponseQK"    # Lhk/com/aisoft/easyaddrui/ResponseQK;

    .prologue
    .line 17
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    .line 21
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 22
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method
