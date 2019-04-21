.class public Lcom/mcdonalds/sdk/modules/models/Catalog;
.super Ljava/lang/Object;
.source "Catalog.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Catalog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMarketCatalog:Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

.field private mStoreCatalog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreCatalog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Catalog$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Catalog$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Catalog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Catalog;->mMarketCatalog:Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Catalog;->mStoreCatalog:Ljava/util/List;

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Catalog;->mStoreCatalog:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getMarketCatalog()Lcom/mcdonalds/sdk/modules/models/MarketCatalog;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Catalog;->mMarketCatalog:Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    return-object v0
.end method

.method public getStoreCatalog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreCatalog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Catalog;->mStoreCatalog:Ljava/util/List;

    return-object v0
.end method

.method public setMarketCatalog(Lcom/mcdonalds/sdk/modules/models/MarketCatalog;)V
    .locals 0
    .param p1, "marketCatalog"    # Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Catalog;->mMarketCatalog:Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    .line 23
    return-void
.end method

.method public setStoreCatalog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreCatalog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "storeCatalog":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Catalog;->mStoreCatalog:Ljava/util/List;

    .line 31
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Catalog;->mMarketCatalog:Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Catalog;->mStoreCatalog:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 43
    return-void
.end method
