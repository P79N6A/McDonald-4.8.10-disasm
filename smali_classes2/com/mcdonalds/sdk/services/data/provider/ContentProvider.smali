.class public Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;
.super Landroid/content/ContentProvider;
.source "ContentProvider.java"


# static fields
.field private static final CATEGORY_ID:I = 0x1

.field private static final CATEGORY_LIST:I = 0x2

.field private static final DIMENSION_ID:I = 0xd

.field private static final DIMENSION_LIST:I = 0xe

.field private static final FACILITY_ID:I = 0x3

.field private static final FACILITY_LIST:I = 0x4

.field private static final FEEDBACK_TYPE_ID:I = 0x9

.field private static final FEEDBACK_TYPE_LIST:I = 0xa

.field private static final INGREDIENT_ID:I = 0xf

.field private static final INGREDIENT_LIST:I = 0x10

.field private static final MENU_TYPE_ID:I = 0x5

.field private static final MENU_TYPE_LIST:I = 0x6

.field private static final PAYMENT_METHOD_ID:I = 0x7

.field private static final PAYMENT_METHOD_LIST:I = 0x8

.field private static final POD_ID:I = 0xb

.field private static final POD_LIST:I = 0xc

.field private static final PROMOTION_ID:I = 0x13

.field private static final PROMOTION_LIST:I = 0x14

.field private static final RECIPE_ID:I = 0x11

.field private static final RECIPE_LIST:I = 0x12

.field private static final SOCIAL_NETWORK_ID:I = 0x1b

.field private static final SOCIAL_NETWORK_LIST:I = 0x1c

.field private static final STORE_CATALOG_ID:I = 0x17

.field private static final STORE_CATALOG_LIST:I = 0x18

.field private static final STORE_PRODUCT_ID:I = 0x19

.field private static final STORE_PRODUCT_LIST:I = 0x1a

.field private static final TENDER_TYPE_ID:I = 0x15

.field private static final TENDER_TYPE_LIST:I = 0x16

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x17

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 75
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 76
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "categories"

    aput-object v4, v3, v6

    .line 77
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "categories"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "facilities"

    aput-object v4, v3, v6

    .line 83
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "facilities"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "menu_types"

    aput-object v4, v3, v6

    .line 89
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "menu_types"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "payment_methods"

    aput-object v4, v3, v6

    .line 95
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "payment_methods"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "pods"

    aput-object v4, v3, v6

    .line 101
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "pods"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "dimensions"

    aput-object v4, v3, v6

    .line 107
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "dimensions"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "ingredients"

    aput-object v4, v3, v6

    .line 113
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    .line 112
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "ingredients"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "products"

    aput-object v4, v3, v6

    .line 119
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    .line 118
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "products"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "promotions"

    aput-object v4, v3, v6

    .line 125
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x13

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "promotions"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "tender_types"

    aput-object v4, v3, v6

    .line 131
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "tender_types"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "store_catalogs"

    aput-object v4, v3, v6

    .line 137
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "store_catalogs"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "store_product"

    aput-object v4, v3, v6

    .line 143
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "store_product"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "%s/#"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "store_product"

    aput-object v4, v3, v6

    .line 149
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b

    .line 148
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mcdonalds.gma.hongkong.provider"

    const-string v2, "store_product"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 308
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 310
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 311
    .local v2, "numOperations":I
    new-array v3, v2, [Landroid/content/ContentProviderResult;

    .line 312
    .local v3, "results":[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 313
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentProviderOperation;

    invoke-virtual {v4, p0, v3, v1}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v4

    aput-object v4, v3, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    return-object v3

    .line 318
    .end local v1    # "i":I
    .end local v2    # "numOperations":I
    .end local v3    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public declared-synchronized bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "valuesList"    # [Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/provider/Contract;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "tableName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 326
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, "length":I
    :try_start_1
    array-length v7, p2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, p2, v6

    .line 330
    .local v4, "values":Landroid/content/ContentValues;
    const/4 v8, 0x0

    instance-of v5, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v1, v3, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 331
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 329
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 330
    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-static {v5, v3, v8, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 336
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 324
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "length":I
    .end local v3    # "tableName":Ljava/lang/String;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 333
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "length":I
    .restart local v3    # "tableName":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 334
    monitor-exit p0

    return v2
.end method

.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/provider/Contract;->getTableName(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 271
    .local v4, "tableName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 273
    .local v3, "result":I
    :try_start_1
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 274
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "PRAGMA foreign_keys=ON;"

    instance-of v5, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    :goto_0
    instance-of v5, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 276
    :goto_1
    const-string v5, "PRAGMA foreign_keys=OFF;"

    instance-of v6, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_2

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :goto_2
    monitor-exit p0

    return v3

    .line 274
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_2
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-static {v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 277
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v5, "SQLite"

    const-string v6, "Database was deleted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 270
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v3    # "result":I
    .end local v4    # "tableName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 275
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "result":I
    .restart local v4    # "tableName":Ljava/lang/String;
    :cond_1
    :try_start_4
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-static {v5, v4, p2, p3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 276
    :cond_2
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 251
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 195
    :pswitch_0
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Categories;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 197
    :pswitch_1
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Categories;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 199
    :pswitch_2
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Facilities;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 201
    :pswitch_3
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Facilities;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 203
    :pswitch_4
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$MenuTypes;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 205
    :pswitch_5
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$MenuTypes;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 207
    :pswitch_6
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$PaymentMethods;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 209
    :pswitch_7
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$PaymentMethods;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 211
    :pswitch_8
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$FeedBackTypes;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 213
    :pswitch_9
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$FeedBackTypes;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 215
    :pswitch_a
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Pods;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 217
    :pswitch_b
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Pods;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 219
    :pswitch_c
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$RecipeDimensions;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 221
    :pswitch_d
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$RecipeDimensions;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 223
    :pswitch_e
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ingredients;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 225
    :pswitch_f
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ingredients;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 227
    :pswitch_10
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 229
    :pswitch_11
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 231
    :pswitch_12
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Promotions;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 233
    :pswitch_13
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Promotions;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 235
    :pswitch_14
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$TenderTypes;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 237
    :pswitch_15
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$TenderTypes;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 239
    :pswitch_16
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreCatalogs;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 241
    :pswitch_17
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreCatalogs;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 243
    :pswitch_18
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreProducts;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 245
    :pswitch_19
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreProducts;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 247
    :pswitch_1a
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$SocialNetworks;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 249
    :pswitch_1b
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$SocialNetworks;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 259
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/provider/Contract;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "tableName":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v6, 0x0

    instance-of v7, v4, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_0

    invoke-virtual {v4, v1, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 261
    .local v2, "id":J
    :goto_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 264
    .end local v1    # "tableName":Ljava/lang/String;
    .end local v2    # "id":J
    :goto_1
    monitor-exit p0

    return-object v4

    .line 260
    .restart local v1    # "tableName":Ljava/lang/String;
    :cond_0
    :try_start_1
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v1, v6, p2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 262
    .end local v1    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v4, "SQLite"

    const-string v6, "Database was deleted"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    .line 264
    goto :goto_1

    .line 259
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-static {v0, p4}, Lcom/mcdonalds/sdk/services/data/provider/helper/OrderingHelper;->getRecipeMap(Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 186
    :cond_0
    :goto_0
    return-object v9

    .line 167
    :cond_1
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->DIMENSIONS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-static {v0, p4}, Lcom/mcdonalds/sdk/services/data/provider/helper/OrderingHelper;->getDimensions(Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 169
    :cond_2
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->INGREDIENTS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    const-string v0, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "store_product"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ingredients"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, "relationName":Ljava/lang/String;
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-static {v0, v10, p4}, Lcom/mcdonalds/sdk/services/data/provider/helper/OrderingHelper;->getIngredients(Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 172
    .end local v10    # "relationName":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->CHOICES_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    const-string v10, "store_products_choices"

    .line 174
    .restart local v10    # "relationName":Ljava/lang/String;
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-static {v0, v10, p4}, Lcom/mcdonalds/sdk/services/data/provider/helper/OrderingHelper;->getIngredients(Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 175
    .end local v10    # "relationName":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->EXTRAS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    const-string v10, "store_product_extras"

    .line 177
    .restart local v10    # "relationName":Ljava/lang/String;
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-static {v0, v10, p4}, Lcom/mcdonalds/sdk/services/data/provider/helper/OrderingHelper;->getIngredients(Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 178
    .end local v10    # "relationName":Ljava/lang/String;
    :cond_5
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;->WOTD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-static {v0, p4}, Lcom/mcdonalds/sdk/services/data/provider/helper/ProductHelper;->getProduct(Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 181
    :cond_6
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/provider/Contract;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "tableName":Ljava/lang/String;
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    instance-of v2, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 183
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v9, v0, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 182
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_7
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_1
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    const/4 v2, 0x1

    .line 294
    :goto_0
    monitor-exit p0

    return v2

    .line 290
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/provider/Contract;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/provider/ContentProvider;->mDatabaseHelper:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_1

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v1, p2, p3, p4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 292
    .end local v1    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v2, "SQLite"

    const-string v3, "Database was deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    const/4 v2, 0x0

    goto :goto_0

    .line 286
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
