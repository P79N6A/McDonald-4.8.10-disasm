.class public Lcom/mcdonalds/app/widget/offers/GridRowModel;
.super Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;
.source "GridRowModel.java"


# instance fields
.field private mOffers:Ljava/util/List;
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
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mcdonalds/app/widget/offers/GridRowModel;->mOffers:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public getItemType()Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;
    .locals 2

    .prologue
    const-string v0, "getItemType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->GridRow:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    return-object v0
.end method

.method public getOffers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/mcdonalds/app/widget/offers/GridRowModel;->mOffers:Ljava/util/List;

    return-object v0
.end method
