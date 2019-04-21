.class public Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;
.super Ljava/lang/Object;
.source "AutoNaviResponse.java"


# instance fields
.field private count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private info:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "info"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private stores:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "datas"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;->count:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;->status:I

    return v0
.end method

.method public getStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;->stores:Ljava/util/List;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;->count:I

    .line 30
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;->info:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;->status:I

    .line 46
    return-void
.end method

.method public setStores(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;->stores:Ljava/util/List;

    .line 54
    return-void
.end method
