.class public Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;
.super Ljava/lang/Object;
.source "OrderDetailsHolder.java"


# instance fields
.field private final mCaloriesWarningView:Landroid/view/View;

.field private final mEmailMsg:Landroid/widget/TextView;

.field private final mOrderNumber:Landroid/widget/TextView;

.field private final mOrderReceiptContainer:Landroid/widget/LinearLayout;

.field private final mOrderTimestamp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const v0, 0x7f1104be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->mEmailMsg:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f1104bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->mOrderNumber:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f1104c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->mOrderTimestamp:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f110506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->mCaloriesWarningView:Landroid/view/View;

    .line 26
    const v0, 0x7f1104c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->mOrderReceiptContainer:Landroid/widget/LinearLayout;

    .line 27
    return-void
.end method


# virtual methods
.method public getCaloriesWarningView()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getCaloriesWarningView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->mCaloriesWarningView:Landroid/view/View;

    return-object v0
.end method

.method public getEmailMsg()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getEmailMsg"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->mEmailMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOrderNumber()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getOrderNumber"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->mOrderNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOrderReceiptContainer()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    const-string v0, "getOrderReceiptContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->mOrderReceiptContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getOrderTimestamp()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getOrderTimestamp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->mOrderTimestamp:Landroid/widget/TextView;

    return-object v0
.end method
