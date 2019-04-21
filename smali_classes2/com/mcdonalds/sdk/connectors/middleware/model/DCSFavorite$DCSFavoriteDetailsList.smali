.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;
.super Ljava/util/HashSet;
.source "DCSFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCSFavoriteDetailsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;)Z
    .locals 1
    .param p1, "dcsFavoriteDetails"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    .prologue
    .line 176
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->remove(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    invoke-super {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 172
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->add(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;)Z

    move-result v0

    return v0
.end method
