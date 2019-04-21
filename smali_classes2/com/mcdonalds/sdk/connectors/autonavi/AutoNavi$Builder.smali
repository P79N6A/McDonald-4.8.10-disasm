.class public Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
.super Ljava/lang/Object;
.source "AutoNavi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mUriBuilder:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "tableId"    # Ljava/lang/String;
    .param p3, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    const-string v1, "tableid"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    const-string v1, "key"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 41
    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2B"

    const-string v3, "+"

    .line 104
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2C"

    const-string v3, ","

    .line 105
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%3A"

    const-string v3, ":"

    .line 106
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setCenter(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    .locals 2
    .param p1, "center"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    const-string v1, "center"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    return-object p0
.end method

.method public setFilters(Ljava/util/List;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "filter":Ljava/lang/String;
    const/16 v4, 0x2b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "filter":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    const-string v5, "filter"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\+"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v1, "StoreCode:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "storeIdFilter":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    const-string v2, "filter"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    .locals 2
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    const-string v1, "keywords"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 82
    return-object p0
.end method

.method public setLimit(I)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    .locals 3
    .param p1, "limit"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    const-string v1, "limit"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 68
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    return-object p0
.end method

.method public setRadius(I)Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;
    .locals 3
    .param p1, "radius"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNavi$Builder;->mUriBuilder:Landroid/net/Uri$Builder;

    const-string v1, "radius"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    return-object p0
.end method
