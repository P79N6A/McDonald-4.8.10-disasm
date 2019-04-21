.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
.super Ljava/lang/Object;
.source "MWCatalogVersionItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public type:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field

.field public version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;

    .line 26
    .local v0, "that":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->type:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->type:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->type:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->type:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
