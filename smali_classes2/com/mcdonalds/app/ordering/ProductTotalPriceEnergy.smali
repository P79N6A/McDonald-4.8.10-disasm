.class public Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;
.super Ljava/lang/Object;
.source "ProductTotalPriceEnergy.java"


# instance fields
.field private mTotalEnergy:Landroid/widget/TextView;

.field private mTotalLabel:Landroid/widget/TextView;

.field private mTotalPrice:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;->mView:Landroid/view/View;

    .line 19
    const v0, 0x7f11012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;->mTotalLabel:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f110526

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;->mTotalEnergy:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f110527

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;->mTotalPrice:Landroid/widget/TextView;

    .line 22
    return-void
.end method


# virtual methods
.method public getTotalEnergy()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getTotalEnergy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;->mTotalEnergy:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTotalPrice()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getTotalPrice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;->mTotalPrice:Landroid/widget/TextView;

    return-object v0
.end method
