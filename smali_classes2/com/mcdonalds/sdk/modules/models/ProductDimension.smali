.class public Lcom/mcdonalds/sdk/modules/models/ProductDimension;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "ProductDimension.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
        ">;"
    }
.end annotation


# static fields
.field public static final COLUMN_DISPLAY_ORDER:Ljava/lang/String; = "display_order"

.field public static final COLUMN_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field public static final COLUMN_SHOW_SIZE_TO_COSTUMER:Ljava/lang/String; = "show_size_to_costumer"

.field public static final COLUMN_SIZE_CODE:Ljava/lang/String; = "size_code"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "dimensions"


# instance fields
.field private mDisplayOrder:I

.field private mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

.field private mShowSizeToCustomer:Z

.field private mSizeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/ProductDimension$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/ProductDimension$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 165
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Product;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 169
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mShowSizeToCustomer:Z

    .line 170
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mSizeCode:I

    .line 171
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mcdonalds/sdk/modules/models/ProductDimension;)I
    .locals 2
    .param p1, "another"    # Lcom/mcdonalds/sdk/modules/models/ProductDimension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 185
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mDisplayOrder:I

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getDisplayOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->compareTo(Lcom/mcdonalds/sdk/modules/models/ProductDimension;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    if-ne p0, p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 140
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    .line 142
    .local v0, "dimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    iget-object v2, v0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mDisplayOrder:I

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
    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "product_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "show_size_to_costumer"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_order"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "size_code"

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
    .line 57
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
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "product_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getProduct()Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "product_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowSizeToCustomer()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mShowSizeToCustomer:Z

    return v0
.end method

.method public getSizeCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mSizeCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "dimensions"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "product_id"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    :cond_0
    const-string v1, "show_size_to_costumer"

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mShowSizeToCustomer:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 67
    const-string v1, "display_order"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mDisplayOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v1, "size_code"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mSizeCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, ""

    .line 93
    .local v0, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v1, "%s_"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "show_size_to_costumer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getBooleanForInt(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mShowSizeToCustomer:Z

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "size_code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mSizeCode:I

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_order"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mDisplayOrder:I

    .line 101
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mDisplayOrder:I

    .line 133
    return-void
.end method

.method public setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 0
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 109
    return-void
.end method

.method public setShowSizeToCustomer(Z)V
    .locals 0
    .param p1, "showSizeToCustomer"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mShowSizeToCustomer:Z

    .line 117
    return-void
.end method

.method public setSizeCode(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "sizeCode"    # Ljava/lang/Integer;

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mSizeCode:I

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 160
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mShowSizeToCustomer:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 161
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->mSizeCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 162
    return-void
.end method
