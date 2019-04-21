.class public Lcom/amap/api/services/poisearch/PoiSearch$Query;
.super Ljava/lang/Object;
.source "PoiSearch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    .line 223
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    .line 226
    const-string/jumbo v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    .line 233
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    .line 236
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-string v0, ""

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/services/poisearch/PoiSearch$Query;)I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    return v0
.end method

.method static synthetic d(Lcom/amap/api/services/poisearch/PoiSearch$Query;)I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    return v0
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 4

    .prologue
    .line 378
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    new-instance v0, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageNum(I)V

    .line 384
    iget v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageSize(I)V

    .line 385
    iget-boolean v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setLimitDiscount(Z)V

    .line 386
    iget-boolean v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setLimitGroupbuy(Z)V

    .line 387
    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setQueryLanguage(Ljava/lang/String;)V

    .line 388
    return-object v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    const-string v1, "PoiSearch"

    const-string v2, "queryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 337
    if-ne p0, p1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 340
    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 342
    goto :goto_0

    .line 343
    :cond_3
    check-cast p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    .line 344
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 345
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 346
    goto :goto_0

    .line 347
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 348
    goto :goto_0

    .line 349
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 350
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 351
    goto :goto_0

    .line 352
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 353
    goto :goto_0

    .line 354
    :cond_7
    iget-boolean v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    iget-boolean v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 355
    goto :goto_0

    .line 356
    :cond_8
    iget-boolean v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Z

    iget-boolean v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 357
    goto :goto_0

    .line 358
    :cond_9
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 359
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    .line 360
    goto :goto_0

    .line 361
    :cond_a
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 362
    goto :goto_0

    .line 363
    :cond_b
    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    iget v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    if-eq v2, v3, :cond_c

    move v0, v1

    .line 364
    goto :goto_0

    .line 365
    :cond_c
    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    iget v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 366
    goto :goto_0

    .line 367
    :cond_d
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 368
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 369
    goto :goto_0

    .line 370
    :cond_e
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 371
    goto/16 :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const-string v1, "00|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a()Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    return v0
.end method

.method protected getQueryLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hasDiscountLimit()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    return v0
.end method

.method public hasGroupBuyLimit()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    .line 319
    .line 321
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 323
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 324
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v0, v4

    .line 325
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Z

    if-eqz v4, :cond_3

    :goto_3
    add-int/2addr v0, v2

    .line 326
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 328
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    add-int/2addr v0, v2

    .line 329
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    add-int/2addr v0, v2

    .line 330
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 332
    return v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 324
    goto :goto_2

    :cond_3
    move v2, v3

    .line 325
    goto :goto_3

    .line 326
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 330
    :cond_5
    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    if-nez p1, :cond_1

    move v0, v1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    if-eq p1, p0, :cond_0

    .line 309
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    iget v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setLimitDiscount(Z)V
    .locals 0

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    .line 264
    return-void
.end method

.method public setLimitGroupbuy(Z)V
    .locals 0

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Z

    .line 256
    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .prologue
    .line 291
    iput p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    .line 292
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 295
    iput p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    .line 296
    return-void
.end method

.method protected setQueryLanguage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 243
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "en"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string/jumbo v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Ljava/lang/String;

    goto :goto_0
.end method
