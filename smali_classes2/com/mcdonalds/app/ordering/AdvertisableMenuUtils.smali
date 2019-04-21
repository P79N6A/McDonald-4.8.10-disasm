.class public Lcom/mcdonalds/app/ordering/AdvertisableMenuUtils;
.super Ljava/lang/Object;
.source "AdvertisableMenuUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFavorite(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/util/List;)Z
    .locals 5
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "favoriteCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.AdvertisableMenuUtils"

    const-string v2, "isFavorite"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableBaseProductId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 26
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setItemTitle(Landroid/content/Context;Landroid/widget/TextView;Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.AdvertisableMenuUtils"

    const-string v3, "setItemTitle"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Product;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const v0, 0x7f0e005e

    .line 55
    .local v0, "color":I
    :goto_0
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    return-void

    .line 52
    .end local v0    # "color":I
    :cond_0
    const v0, 0x7f0e0057

    .restart local v0    # "color":I
    goto :goto_0
.end method
