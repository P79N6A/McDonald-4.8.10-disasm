.class public Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
.super Ljava/lang/Object;
.source "OrderDetailsSubElement.java"


# instance fields
.field private final mContainer:Landroid/widget/RelativeLayout;

.field private final mDetails:Landroid/widget/TextView;

.field private final mInfo:Landroid/widget/TextView;

.field private final mPriceUplift:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mContainer:Landroid/widget/RelativeLayout;

    .line 22
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1104b9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mTitle:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1104bd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mDetails:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1104ba

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mInfo:Landroid/widget/TextView;

    .line 25
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f110137

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mPriceUplift:Landroid/widget/TextView;

    .line 26
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    const-string v0, "getContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getDetails()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getDetails"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mDetails:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInfo()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getInfo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPriceUplift()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getPriceUplift"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mPriceUplift:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
