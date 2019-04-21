.class public Lcom/mcdonalds/app/widget/offers/SelectorRowModel;
.super Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;
.source "SelectorRowModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemType()Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;
    .locals 2

    .prologue
    const-string v0, "getItemType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->Selector:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    return-object v0
.end method
