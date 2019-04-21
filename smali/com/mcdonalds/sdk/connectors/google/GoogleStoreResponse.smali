.class public Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;
.super Lcom/mcdonalds/sdk/connectors/google/GoogleStore;
.source "GoogleStoreResponse.java"


# instance fields
.field private mGoogleStores:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "features"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/google/GoogleStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoogleStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/google/GoogleStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;->mGoogleStores:Ljava/util/List;

    return-object v0
.end method

.method public isSingleStore()Z
    .locals 2

    .prologue
    .line 99
    const-string v0, "Feature"

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setGoogleStores(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/google/GoogleStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "googleStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/google/GoogleStore;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;->mGoogleStores:Ljava/util/List;

    .line 96
    return-void
.end method
