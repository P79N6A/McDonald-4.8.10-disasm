.class public Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "RecipeComponent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLUMN_CUSTOMER_FRIENDLY:Ljava/lang/String; = "customer_friendly"

.field public static final COLUMN_DEFAULT_QUANTITY:Ljava/lang/String; = "min_default_quantity"

.field public static final COLUMN_DISPLAY_ORDER:Ljava/lang/String; = "display_order"

.field public static final COLUMN_INGREDIENTS_STATEMENT:Ljava/lang/String; = "ingredients_statement"

.field public static final COLUMN_MAX_QUANTITY:Ljava/lang/String; = "max_quantity"

.field public static final COLUMN_MIN_QUANTITY:Ljava/lang/String; = "min_quantity"

.field public static final COLUMN_PRODUCTS_ADDITIONAL_ALLERGEN:Ljava/lang/String; = "product_additional_allergen"

.field public static final COLUMN_PRODUCTS_ALLERGEN:Ljava/lang/String; = "product_allergen"

.field public static final COLUMN_PRODUCT_CODE:Ljava/lang/String; = "product_code"

.field public static final COLUMN_PRODUCT_NAME:Ljava/lang/String; = "product_name"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/RecipeComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "recipe_component"


# instance fields
.field private mAdditionalIngredient:Ljava/lang/String;

.field private mCustomerFriendly:Ljava/lang/Boolean;

.field private mDefaultQuantity:I

.field private mDisplayOrder:I

.field private mIngredientStatement:Ljava/lang/String;

.field private mMaxQuantity:I

.field private mMinQuantity:I

.field private mProductAdditionalAllergen:Ljava/lang/String;

.field private mProductAllergen:Ljava/lang/String;

.field private mProductCode:J

.field private mProductName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 262
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductName:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mIngredientStatement:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAllergen:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAdditionalAllergen:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDisplayOrder:I

    .line 270
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mCustomerFriendly:Ljava/lang/Boolean;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMinQuantity:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDefaultQuantity:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMaxQuantity:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductCode:J

    .line 275
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalIngredient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mAdditionalIngredient:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerFriendly()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mCustomerFriendly:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDefaultQuantity()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDefaultQuantity:I

    return v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDisplayOrder:I

    return v0
.end method

.method public getFields()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "product_code"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "product_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "ingredients_statement"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "product_allergen"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "product_additional_allergen"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_order"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "customer_friendly"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "min_quantity"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "min_default_quantity"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "max_quantity"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIngredientStatement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mIngredientStatement:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxQuantity()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMaxQuantity:I

    return v0
.end method

.method public getMinQuantity()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMinQuantity:I

    return v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "product_code"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getProductAdditionalAllergen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAdditionalAllergen:Ljava/lang/String;

    return-object v0
.end method

.method public getProductAllergen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAllergen:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCode()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductCode:J

    return-wide v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "product_code"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "recipe_component"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "product_code"

    iget-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductCode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string v1, "product_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "ingredients_statement"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mIngredientStatement:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "product_allergen"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAllergen:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "product_additional_allergen"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAdditionalAllergen:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "display_order"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDisplayOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v1, "customer_friendly"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mCustomerFriendly:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getIntForBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v1, "min_quantity"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMinQuantity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v1, "min_default_quantity"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDefaultQuantity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v1, "max_quantity"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMaxQuantity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    return-object v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 137
    const-string v0, "product_code"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductCode:J

    .line 138
    const-string v0, "product_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductName:Ljava/lang/String;

    .line 139
    const-string v0, "ingredients_statement"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mIngredientStatement:Ljava/lang/String;

    .line 140
    const-string v0, "product_allergen"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAllergen:Ljava/lang/String;

    .line 141
    const-string v0, "product_additional_allergen"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAdditionalAllergen:Ljava/lang/String;

    .line 142
    const-string v0, "display_order"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDisplayOrder:I

    .line 143
    const-string v0, "customer_friendly"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getBooleanForInt(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mCustomerFriendly:Ljava/lang/Boolean;

    .line 144
    const-string v0, "min_quantity"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMinQuantity:I

    .line 145
    const-string v0, "min_default_quantity"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDefaultQuantity:I

    .line 146
    const-string v0, "max_quantity"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMaxQuantity:I

    .line 148
    return-void
.end method

.method public setAdditionalIngredient(Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalIngredient"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mAdditionalIngredient:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setCustomerFriendly(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "customerFriendly"    # Ljava/lang/Boolean;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mCustomerFriendly:Ljava/lang/Boolean;

    .line 196
    return-void
.end method

.method public setDefaultQuantity(I)V
    .locals 0
    .param p1, "defaultQuantity"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDefaultQuantity:I

    .line 212
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDisplayOrder:I

    .line 188
    return-void
.end method

.method public setIngredientStatement(Ljava/lang/String;)V
    .locals 0
    .param p1, "ingredientStatement"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mIngredientStatement:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setMaxQuantity(I)V
    .locals 0
    .param p1, "maxQuantity"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMaxQuantity:I

    .line 220
    return-void
.end method

.method public setMinQuantity(I)V
    .locals 0
    .param p1, "minQuantity"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMinQuantity:I

    .line 204
    return-void
.end method

.method public setProductAdditionalAllergen(Ljava/lang/String;)V
    .locals 0
    .param p1, "productAdditionalAllergen"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAdditionalAllergen:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setProductAllergen(Ljava/lang/String;)V
    .locals 0
    .param p1, "productAllergen"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAllergen:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setProductCode(J)V
    .locals 1
    .param p1, "productCode"    # J

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductCode:J

    .line 228
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductName:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecipeComponent{mProductName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIngredientStatement=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mIngredientStatement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProductAllergen=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAllergen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProductAdditionalAllergen=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAdditionalAllergen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mIngredientStatement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAllergen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductAdditionalAllergen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDisplayOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mCustomerFriendly:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 255
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMinQuantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mDefaultQuantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mMaxQuantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->mProductCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    return-void
.end method
