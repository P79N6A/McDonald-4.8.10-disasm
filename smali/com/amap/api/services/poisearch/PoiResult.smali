.class public final Lcom/amap/api/services/poisearch/PoiResult;
.super Ljava/lang/Object;
.source "PoiResult.java"


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/services/poisearch/k;


# direct methods
.method private constructor <init>(Lcom/amap/api/services/poisearch/k;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/poisearch/k;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiResult;->b:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiResult;->c:Lcom/amap/api/services/poisearch/k;

    .line 23
    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/k;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/poisearch/PoiResult;->a(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/poisearch/PoiResult;->a:I

    .line 24
    iput-object p2, p0, Lcom/amap/api/services/poisearch/PoiResult;->b:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method private a(I)I
    .locals 3

    .prologue
    const/16 v0, 0x1e

    .line 52
    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiResult;->c:Lcom/amap/api/services/poisearch/k;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/k;->f()I

    move-result v1

    .line 53
    add-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v1

    .line 54
    if-le v1, v0, :cond_0

    .line 57
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static a(Lcom/amap/api/services/poisearch/k;Ljava/util/ArrayList;)Lcom/amap/api/services/poisearch/PoiResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/poisearch/k;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;)",
            "Lcom/amap/api/services/poisearch/PoiResult;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/amap/api/services/poisearch/PoiResult;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/poisearch/PoiResult;-><init>(Lcom/amap/api/services/poisearch/k;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiResult;->c:Lcom/amap/api/services/poisearch/k;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/k;->k()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/amap/api/services/poisearch/PoiResult;->a:I

    return v0
.end method

.method public getPois()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiResult;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiResult;->c:Lcom/amap/api/services/poisearch/k;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/k;->j()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    return-object v0
.end method

.method public getSearchSuggestionCitys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiResult;->c:Lcom/amap/api/services/poisearch/k;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/k;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchSuggestionKeywords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiResult;->c:Lcom/amap/api/services/poisearch/k;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/k;->l()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
