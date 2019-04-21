.class public Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;
.super Landroid/widget/FrameLayout;
.source "ProductRelatedOffersView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mOffersContainer:Landroid/view/ViewGroup;

.field private mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

.field private mProductId:Ljava/lang/String;

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field

.field private mRelatedOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->inflate(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->inflate(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private checkOrderMtd(Lcom/mcdonalds/sdk/modules/models/Offer;)Z
    .locals 5
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "checkOrderMtd"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    .line 95
    .local v0, "isDeliveryOrder":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 96
    goto :goto_0
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "inflate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const v0, 0x7f0401a9

    invoke-static {p1, v0, p0}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v0, 0x7f11053a

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mOffersContainer:Landroid/view/ViewGroup;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mRelatedOffers:Ljava/util/List;

    .line 61
    return-void
.end method

.method private trackOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 3
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const-string v0, "trackOfferClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    const-string v0, "/order/item"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;Landroid/app/Activity;)V
    .locals 5
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v2, "filter"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mProductId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mRelatedOffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 70
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mProducts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 71
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->relatesToProductId(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isArchived()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isExpired()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 72
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->checkOrderMtd(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/mcdonalds/app/util/OfferUtils;->checkStore(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mRelatedOffers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_4
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->refresh(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const-string v5, "onClick"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    instance-of v5, p1, Lcom/mcdonalds/app/offers/OfferItemView;

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 148
    check-cast v3, Lcom/mcdonalds/app/offers/OfferItemView;

    .line 149
    .local v3, "item":Lcom/mcdonalds/app/offers/OfferItemView;
    invoke-virtual {v3}, Lcom/mcdonalds/app/offers/OfferItemView;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v4

    .line 151
    .local v4, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 153
    invoke-direct {p0, v4}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->trackOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;)V

    .line 155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v1, "extras":Landroid/os/Bundle;
    const-string v5, "offer_selection_type"

    sget-object v6, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Nearby:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .line 158
    invoke-virtual {v6}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->ordinal()I

    move-result v6

    .line 157
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v5, "extra_from_product"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v5

    const-string v6, "extra_current_recipe"

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v5

    const-string v6, "extra_offer"

    invoke-virtual {v5, v6, v4}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 165
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/mcdonalds/app/offers/OfferActivity;

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 167
    const/16 v5, 0x56d

    invoke-virtual {v0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    sget-object v5, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clicked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "item":Lcom/mcdonalds/app/offers/OfferItemView;
    .end local v4    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_0
    return-void
.end method

.method public refresh(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    const-string v5, "refresh"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    sget-object v5, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refresh called: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mRelatedOffers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " offers"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mOffersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 110
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mRelatedOffers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_1
    const/4 v5, 0x5

    invoke-static {v0, v5}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v2

    .line 116
    .local v2, "margin":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2, v2, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 123
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mRelatedOffers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 125
    .local v3, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    new-instance v1, Lcom/mcdonalds/app/offers/OfferItemView;

    invoke-direct {v1, v0, v3}, Lcom/mcdonalds/app/offers/OfferItemView;-><init>(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Offer;)V

    .line 126
    .local v1, "item":Lcom/mcdonalds/app/offers/OfferItemView;
    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/offers/OfferItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/offers/OfferItemView;->display(Landroid/app/Activity;)V

    .line 128
    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/offers/OfferItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mOffersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 133
    .end local v1    # "item":Lcom/mcdonalds/app/offers/OfferItemView;
    .end local v3    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 3
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    const-string v0, "setProduct"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 180
    return-void
.end method

.method public setProductId(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const-string v0, "setProductId"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mProductId:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->mProducts:Ljava/util/List;

    .line 140
    sget-object v0, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Product id set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method
