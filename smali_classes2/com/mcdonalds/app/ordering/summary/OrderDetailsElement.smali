.class public Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
.super Ljava/lang/Object;
.source "OrderDetailsElement.java"


# instance fields
.field private final mBottomBorder:Landroid/view/View;

.field private final mContainer:Landroid/widget/RelativeLayout;

.field private final mCustomSpecialInstructions:Landroid/widget/TextView;

.field private final mInfo:Landroid/widget/TextView;

.field private final mPrice:Landroid/widget/TextView;

.field private final mQuantity:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;

.field private final mTopBorder:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mContainer:Landroid/widget/RelativeLayout;

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1104b8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mQuantity:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1104b9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mTitle:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1104ba

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mInfo:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1104bb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mPrice:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f110139

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mCustomSpecialInstructions:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1104b6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mTopBorder:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1104b7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mBottomBorder:Landroid/view/View;

    .line 35
    return-void
.end method


# virtual methods
.method public getBottomBorder()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getBottomBorder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mBottomBorder:Landroid/view/View;

    return-object v0
.end method

.method public getContainer()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    const-string v0, "getContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCustomSpecialInstructions()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getCustomSpecialInstructions"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mCustomSpecialInstructions:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInfo()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getInfo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrice()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getPrice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mPrice:Landroid/widget/TextView;

    return-object v0
.end method

.method public getQuantity()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getQuantity"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mQuantity:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTopBorder()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getTopBorder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->mTopBorder:Landroid/view/View;

    return-object v0
.end method
