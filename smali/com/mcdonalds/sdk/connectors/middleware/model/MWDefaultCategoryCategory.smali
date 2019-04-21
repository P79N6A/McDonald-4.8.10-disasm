.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategoryCategory;
.super Ljava/lang/Object;
.source "MWDefaultCategoryCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public defaultCategoryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public defaultCategoryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toCategory()Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Category;-><init>()V

    .line 23
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategoryCategory;->defaultCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setName(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategoryCategory;->defaultCategoryId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setID(I)V

    .line 26
    return-object v0
.end method
