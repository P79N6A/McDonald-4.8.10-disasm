.class public Lcom/mcdonalds/sdk/services/data/repository/AdvertisablePromotionRepository;
.super Ljava/lang/Object;
.source "AdvertisablePromotionRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanAdvertisablePromotionsForStore(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$AdvertisablePromotions;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "%s=?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "store_id"

    aput-object v4, v3, v5

    .line 16
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    return-void
.end method
