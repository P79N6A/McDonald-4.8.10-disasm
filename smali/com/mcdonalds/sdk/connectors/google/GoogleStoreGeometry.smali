.class public Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;
.super Ljava/lang/Object;
.source "GoogleStoreGeometry.java"


# instance fields
.field private mCoordinates:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coordinates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoordinates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;->mCoordinates:Ljava/util/List;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;->mCoordinates:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;->mCoordinates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setCoordinates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "coordinates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;->mCoordinates:Ljava/util/List;

    .line 34
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;->mType:Ljava/lang/String;

    .line 26
    return-void
.end method
