.class Lcom/mcdonalds/app/ordering/basket/BasketFooter;
.super Ljava/lang/Object;
.source "BasketFooter.java"


# instance fields
.field final mAddToBasketButton:Landroid/widget/Button;

.field final mCaloriesWarningView:Landroid/view/View;

.field final mDeleteOrderButton:Landroid/widget/Button;

.field final mPriceWarningTextView:Landroid/widget/TextView;

.field final mView:Landroid/view/View;

.field final mWarningsContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->mView:Landroid/view/View;

    .line 24
    const v0, 0x7f1100e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->mWarningsContainer:Landroid/view/View;

    .line 25
    const v0, 0x7f110505

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->mPriceWarningTextView:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f110506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->mCaloriesWarningView:Landroid/view/View;

    .line 27
    const v0, 0x7f11010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->mDeleteOrderButton:Landroid/widget/Button;

    .line 28
    const v0, 0x7f1100e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->mAddToBasketButton:Landroid/widget/Button;

    .line 29
    return-void
.end method


# virtual methods
.method public getAddToBasketButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getAddToBasketButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->mAddToBasketButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getCaloriesWarningView()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getCaloriesWarningView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->mCaloriesWarningView:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteOrderButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getDeleteOrderButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->mDeleteOrderButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getWarningsContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getWarningsContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->mWarningsContainer:Landroid/view/View;

    return-object v0
.end method
