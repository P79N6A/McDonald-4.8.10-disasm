.class public final Lcom/mcdonalds/sdk/services/data/provider/Contract;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$AdvertisablePromotions;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreProductCat;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$SocialNetworks;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreProductCategories;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreProducts;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreCatalogs;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$TenderTypes;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$Promotions;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$Ingredients;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$RecipeDimensions;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$Pods;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$FeedBackTypes;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$PaymentMethods;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$MenuTypes;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$Facilities;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$Categories;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$CurrentStore;,
        Lcom/mcdonalds/sdk/services/data/provider/Contract$Favorites;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.mcdonalds.gma.hongkong.provider"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://com.mcdonalds.gma.hongkong.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;)Landroid/net/Uri;
    .locals 1
    .param p0, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/provider/Contract;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
