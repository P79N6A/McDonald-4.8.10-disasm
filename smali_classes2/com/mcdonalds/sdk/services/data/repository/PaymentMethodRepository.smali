.class public Lcom/mcdonalds/sdk/services/data/repository/PaymentMethodRepository;
.super Ljava/lang/Object;
.source "PaymentMethodRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAll(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$PaymentMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 21
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 23
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .local v8, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;-><init>()V

    .line 26
    .local v7, "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->populateFromCursor(Landroid/database/Cursor;)V

    .line 27
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 30
    .end local v7    # "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 35
    .end local v8    # "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    :goto_1
    return-object v8

    :cond_1
    move-object v8, v2

    goto :goto_1
.end method

.method public static getById(ILandroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .locals 10
    .param p0, "paymentId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 39
    const-string v0, "%s=?"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v5, "id"

    aput-object v5, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 41
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$PaymentMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 43
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 44
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 45
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 46
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;-><init>()V

    .line 47
    .local v7, "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->populateFromCursor(Landroid/database/Cursor;)V

    .line 48
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    .line 55
    .end local v7    # "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    :cond_0
    :goto_0
    return-object v2

    .line 51
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
