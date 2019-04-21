.class public Lcom/mcdonalds/app/widget/offers/ListRowModel;
.super Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;
.source "ListRowModel.java"


# instance fields
.field private mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 0
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mcdonalds/app/widget/offers/ListRowModel;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 13
    return-void
.end method


# virtual methods
.method public getItemType()Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;
    .locals 2

    .prologue
    const-string v0, "getItemType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->ListRow:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    return-object v0
.end method

.method public getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;
    .locals 2

    .prologue
    const-string v0, "getOffer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/mcdonalds/app/widget/offers/ListRowModel;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    return-object v0
.end method
