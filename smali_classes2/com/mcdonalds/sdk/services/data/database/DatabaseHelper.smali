.class public Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "mcd.db"

.field public static final DATABASE_VERSION:I = 0x9

.field private static final MODELS:[Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

.field private static sInstance:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/Category;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/Facility;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/Facility;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/MenuType;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/MenuType;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/FeedBackType;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/FeedBackType;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/Pod;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/Pod;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/Promotion;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/Promotion;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/TenderType;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/TenderType;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/Nutrient;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/Allergen;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/Allergen;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/RecipeFooter;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/RecipeFooter;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->MODELS:[Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string v0, "mcd.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 66
    return-void
.end method

.method public static delete()Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    const-string v1, "delete"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getCreateTableString(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;)[Ljava/lang/String;
    .locals 23
    .param p1, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    .prologue
    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v5, "createStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v17

    .line 161
    .local v17, "tableName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getPrimaryKeyNames()[Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, "primaryKeys":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeys()Ljava/util/List;

    move-result-object v9

    .line 163
    .local v9, "foreignKeys":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v18, "create table if not exists %s (\n"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v17, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getFields()Ljava/util/List;

    move-result-object v7

    .line 166
    .local v7, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 167
    .local v8, "fieldsSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_1

    .line 168
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    .line 169
    .local v6, "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    const-string v18, "  %s %s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v6, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget-object v0, v6, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    if-ge v11, v0, :cond_0

    .line 171
    const-string v18, ",\n"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 174
    .end local v6    # "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    :cond_1
    if-eqz v14, :cond_4

    array-length v0, v14

    move/from16 v18, v0

    if-lez v18, :cond_4

    .line 175
    const-string v18, ",\n PRIMARY KEY("

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v11, 0x0

    :goto_1
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 177
    aget-object v13, v14, v11

    .line 178
    .local v13, "key":Ljava/lang/String;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    array-length v0, v14

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 180
    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 183
    .end local v13    # "key":Ljava/lang/String;
    :cond_3
    const-string v18, ") ON CONFLICT REPLACE\n"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_4
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v16, "relationTableCreationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_c

    .line 187
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 188
    .local v10, "foreignKeysSize":I
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_c

    .line 189
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 190
    .local v13, "key":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    iget v0, v13, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getRelationTableCreationString(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 193
    :cond_5
    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v18

    if-gt v11, v0, :cond_6

    .line 194
    const-string v18, ",\n"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_6
    iget v0, v13, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 197
    const-string v18, "  UNIQUE (%s) ON CONFLICT REPLACE,\n"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v13, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_7
    const-string v18, "  foreign key ("

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v4, v13, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    .line 201
    .local v4, "columnNames":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_9

    .line 202
    if-lez v12, :cond_8

    .line 203
    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_8
    aget-object v3, v4, v12

    .line 206
    .local v3, "columnName":Ljava/lang/String;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v3, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 208
    .end local v3    # "columnName":Ljava/lang/String;
    :cond_9
    const-string v18, ") references %s("

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v13, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v15, v13, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    .line 210
    .local v15, "referencedColumnNames":[Ljava/lang/String;
    const/4 v12, 0x0

    :goto_5
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_b

    .line 211
    if-lez v12, :cond_a

    .line 212
    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_a
    aget-object v3, v15, v12

    .line 215
    .restart local v3    # "columnName":Ljava/lang/String;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v3, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 217
    .end local v3    # "columnName":Ljava/lang/String;
    :cond_b
    const-string v18, ") ON DELETE CASCADE"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 221
    .end local v4    # "columnNames":[Ljava/lang/String;
    .end local v10    # "foreignKeysSize":I
    .end local v12    # "j":I
    .end local v13    # "key":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    .end local v15    # "referencedColumnNames":[Ljava/lang/String;
    :cond_c
    const-string v18, "\n);\n\n"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    return-object v18
.end method

.method private getDropTableString(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;)[Ljava/lang/String;
    .locals 11
    .param p1, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "dropStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "tableName":Ljava/lang/String;
    const-string v4, "drop table if exists %s;\n"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeys()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 232
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 233
    .local v1, "key":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    iget v5, v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationType:I

    if-ne v5, v10, :cond_0

    .line 234
    iget-object v2, v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationTableName:Ljava/lang/String;

    .line 235
    .local v2, "relationTableName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 236
    const-string v5, "%s_%s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v8

    iget-object v7, v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 238
    :cond_1
    const-string v5, "drop table if exists %s;\n"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v1    # "key":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    .end local v2    # "relationTableName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-class v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->sInstance:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->sInstance:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    .line 73
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->sInstance:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRelationTableCreationString(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;)Ljava/lang/String;
    .locals 20
    .param p1, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    .param p2, "key"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .prologue
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v12

    .line 250
    .local v12, "tableName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    .line 251
    .local v10, "referencedTableName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationTableName:Ljava/lang/String;

    .line 252
    .local v11, "relationTableName":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 253
    const-string v14, "%s_%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const/16 v16, 0x1

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 255
    :cond_0
    const-string v14, "create table if not exists %s (\n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v13, ""

    .line 257
    .local v13, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getFields()Ljava/util/List;

    move-result-object v5

    .line 258
    .local v5, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    .line 259
    .local v3, "columnNames":[Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    .line 260
    .local v4, "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    iget-object v15, v4, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->name:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, v3, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 261
    iget-object v13, v4, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->type:Ljava/lang/String;

    .line 265
    .end local v4    # "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    :cond_2
    array-length v15, v3

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_3

    aget-object v2, v3, v14

    .line 266
    .local v2, "columnName":Ljava/lang/String;
    const-string v16, "%s_%s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object v2, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "name":Ljava/lang/String;
    const-string v16, "  %s %s,\n"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 269
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    aget-object v8, v15, v14

    .line 270
    .local v8, "referencedColumnName":Ljava/lang/String;
    const-string v17, "%s_%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 271
    .restart local v7    # "name":Ljava/lang/String;
    const-string v17, "  %s %s,\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v13, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 273
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "referencedColumnName":Ljava/lang/String;
    :cond_4
    const-string v14, "  foreign key ("

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v14, v3

    if-ge v6, v14, :cond_6

    .line 275
    if-lez v6, :cond_5

    .line 276
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_5
    aget-object v2, v3, v6

    .line 279
    .restart local v2    # "columnName":Ljava/lang/String;
    const-string v14, "%s_%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const/16 v16, 0x1

    aput-object v2, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 280
    .restart local v7    # "name":Ljava/lang/String;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 282
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_6
    const-string v14, ") references %s("

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const/4 v6, 0x0

    :goto_3
    array-length v14, v3

    if-ge v6, v14, :cond_8

    .line 284
    if-lez v6, :cond_7

    .line 285
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_7
    aget-object v2, v3, v6

    .line 288
    .restart local v2    # "columnName":Ljava/lang/String;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 290
    .end local v2    # "columnName":Ljava/lang/String;
    :cond_8
    const-string v14, ") ON DELETE CASCADE,\n"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v14, "  foreign key ("

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    .line 293
    .local v9, "referencedColumnNames":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_4
    array-length v14, v9

    if-ge v6, v14, :cond_a

    .line 294
    if-lez v6, :cond_9

    .line 295
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_9
    aget-object v2, v9, v6

    .line 298
    .restart local v2    # "columnName":Ljava/lang/String;
    const-string v14, "%s_%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v2, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 299
    .restart local v7    # "name":Ljava/lang/String;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 301
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_a
    const-string v14, ") references %s("

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/4 v6, 0x0

    :goto_5
    array-length v14, v9

    if-ge v6, v14, :cond_c

    .line 303
    if-lez v6, :cond_b

    .line 304
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_b
    aget-object v2, v9, v6

    .line 307
    .restart local v2    # "columnName":Ljava/lang/String;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 309
    .end local v2    # "columnName":Ljava/lang/String;
    :cond_c
    const-string v14, ") ON DELETE CASCADE,\n"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v14, "  primary key ("

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    array-length v15, v3

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v15, :cond_d

    aget-object v2, v3, v14

    .line 312
    .restart local v2    # "columnName":Ljava/lang/String;
    const-string v16, "%s_%s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object v2, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 313
    .restart local v7    # "name":Ljava/lang/String;
    const-string v16, "%s, "

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 315
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    :goto_7
    array-length v14, v9

    if-ge v6, v14, :cond_f

    .line 316
    if-lez v6, :cond_e

    .line 317
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_e
    aget-object v2, v9, v6

    .line 320
    .restart local v2    # "columnName":Ljava/lang/String;
    const-string v14, "%s_%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v2, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 321
    .restart local v7    # "name":Ljava/lang/String;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 323
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_f
    const-string v14, ") ON CONFLICT REPLACE\n"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v14, "\n);\n\n"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

.method public static declared-synchronized reset(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-class v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->sInstance:Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit v1

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static select()Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    const-string v1, "select"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static update()Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    const-string v1, "update"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clear(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->destroy(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    return-void
.end method

.method public destroy(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x0

    .line 107
    :try_start_0
    sget-object v8, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->MODELS:[Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v2, v8, v7

    .line 108
    .local v2, "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getDropTableString(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v5, v6

    :goto_1
    if-ge v5, v11, :cond_2

    aget-object v3, v10, v5

    .line 109
    .local v3, "sql":Ljava/lang/String;
    instance-of v4, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 109
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-static {v4, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 112
    .end local v2    # "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "SQLite"

    const-string v5, "Database was deleted"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    return-void

    .line 107
    .restart local v2    # "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    :cond_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 120
    :try_start_0
    const-string v1, "PRAGMA auto_vacuum = FULL"

    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 120
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLite"

    const-string v2, "Database was deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x0

    .line 95
    :try_start_0
    sget-object v8, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->MODELS:[Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v2, v8, v7

    .line 96
    .local v2, "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getCreateTableString(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v5, v6

    :goto_1
    if-ge v5, v11, :cond_2

    aget-object v3, v10, v5

    .line 97
    .local v3, "sql":Ljava/lang/String;
    instance-of v4, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 97
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-static {v4, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 100
    .end local v2    # "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "SQLite"

    const-string v5, "Database was deleted"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    return-void

    .line 95
    .restart local v2    # "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    :cond_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->clear(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    return-void
.end method
