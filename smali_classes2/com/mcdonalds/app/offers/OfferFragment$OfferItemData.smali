.class public Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
.super Ljava/lang/Object;
.source "OfferFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/offers/OfferFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfferItemData"
.end annotation


# instance fields
.field public choiceIndex:I

.field public choiceProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field public isChoice:Z

.field public orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

.field public product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 6
    .param p1, "orderOfferProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 2294
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;IZ)V

    .line 2295
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;IZ)V
    .locals 0
    .param p1, "orderOfferProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "choiceProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p4, "choiceIndex"    # I
    .param p5, "isChoice"    # Z

    .prologue
    .line 2285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2286
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 2287
    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 2288
    iput-object p3, p0, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->choiceProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 2289
    iput p4, p0, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->choiceIndex:I

    .line 2290
    iput-boolean p5, p0, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->isChoice:Z

    .line 2291
    return-void
.end method
