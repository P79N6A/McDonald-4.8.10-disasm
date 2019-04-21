.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;
.super Ljava/lang/Object;
.source "MWStoreCatalogVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public catalog:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Catalog"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;",
            ">;"
        }
    .end annotation
.end field

.field public storeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;->catalog:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    if-ne p0, p1, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v1

    .line 22
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 24
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;

    .line 26
    .local v0, "that":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;->storeId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;->storeId:Ljava/lang/String;

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;->storeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;->storeId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;->storeId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;->storeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
