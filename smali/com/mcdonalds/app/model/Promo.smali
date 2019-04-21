.class public Lcom/mcdonalds/app/model/Promo;
.super Ljava/lang/Object;
.source "Promo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAssociatedRecipes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "associatedRecipes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categoryId"
    .end annotation
.end field

.field private mItemLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemLink"
    .end annotation
.end field

.field private mOfferId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offerId"
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "itemLink"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "associatedRecipes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mcdonalds/app/model/Promo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "itemLink"    # Ljava/lang/String;
    .param p4, "offerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "associatedRecipes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mcdonalds/app/model/Promo;->mUrl:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/mcdonalds/app/model/Promo;->mAssociatedRecipes:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcom/mcdonalds/app/model/Promo;->mItemLink:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/mcdonalds/app/model/Promo;->mOfferId:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getAssociatedRecipes()Ljava/util/List;
    .locals 2
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
    const-string v0, "getAssociatedRecipes"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/app/model/Promo;->mAssociatedRecipes:Ljava/util/List;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/Integer;
    .locals 2

    .prologue
    const-string v0, "getCategoryId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/model/Promo;->mCategoryId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemLink()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getItemLink"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/model/Promo;->mItemLink:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getOfferId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/app/model/Promo;->mOfferId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getUrl"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/model/Promo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "toString"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const-string v2, "[Promo url = {0} recipes = {1}, item = {2} category = {3}]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mcdonalds/app/model/Promo;->mUrl:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/mcdonalds/app/model/Promo;->mAssociatedRecipes:Ljava/util/List;

    if-eqz v4, :cond_0

    move v0, v1

    .line 70
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mcdonalds/app/model/Promo;->mItemLink:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mcdonalds/app/model/Promo;->mCategoryId:Ljava/lang/Integer;

    aput-object v1, v3, v0

    .line 67
    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
