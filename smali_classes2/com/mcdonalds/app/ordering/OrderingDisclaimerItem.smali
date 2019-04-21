.class public Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;
.super Ljava/lang/Object;
.source "OrderingDisclaimerItem.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mHasBasketView:Z

.field private mHasMenuGridView:Z

.field private mHasOrderSummaryView:Z

.field private mHasProductView:Z

.field private mUseBoldText:Z

.field private mUseThemeColor:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZZZ)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "useBoldText"    # Z
    .param p3, "useThemeColor"    # Z
    .param p4, "hasProductView"    # Z
    .param p5, "hasBasketView"    # Z
    .param p6, "hasMenuGridView"    # Z
    .param p7, "hasOrderSummaryView"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mDescription:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mUseBoldText:Z

    .line 32
    iput-boolean p3, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mUseThemeColor:Z

    .line 33
    iput-boolean p4, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mHasProductView:Z

    .line 34
    iput-boolean p5, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mHasBasketView:Z

    .line 35
    iput-boolean p6, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mHasMenuGridView:Z

    .line 36
    iput-boolean p7, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mHasOrderSummaryView:Z

    .line 37
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getDescription"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hasBasketView()Z
    .locals 2

    .prologue
    const-string v0, "hasBasketView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mHasBasketView:Z

    return v0
.end method

.method public hasMenuGridView()Z
    .locals 2

    .prologue
    const-string v0, "hasMenuGridView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mHasMenuGridView:Z

    return v0
.end method

.method public hasOrderSummaryView()Z
    .locals 2

    .prologue
    const-string v0, "hasOrderSummaryView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mHasOrderSummaryView:Z

    return v0
.end method

.method public hasProductView()Z
    .locals 2

    .prologue
    const-string v0, "hasProductView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mHasProductView:Z

    return v0
.end method

.method public useBoldText()Z
    .locals 2

    .prologue
    const-string v0, "useBoldText"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mUseBoldText:Z

    return v0
.end method

.method public useThemeColor()Z
    .locals 2

    .prologue
    const-string v0, "useThemeColor"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->mUseThemeColor:Z

    return v0
.end method
