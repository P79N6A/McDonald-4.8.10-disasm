.class public Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;
.super Landroid/widget/FrameLayout;
.source "DeliveryLocationView.java"


# instance fields
.field private mTimeLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->inflate(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->inflate(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "inflate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const v0, 0x7f04005a

    invoke-static {p1, v0, p0}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->initWidgets()V

    .line 44
    :cond_0
    return-void
.end method

.method private initWidgets()V
    .locals 3

    .prologue
    const-string v1, "initWidgets"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const v1, 0x7f110172

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->mTimeLabel:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f110173

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "disclosureIcon":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public getTimeLabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getTimeLabel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->mTimeLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public setDeliveryHeaderText(Landroid/text/Spanned;)V
    .locals 3
    .param p1, "headerText"    # Landroid/text/Spanned;

    .prologue
    const-string v0, "setDeliveryHeaderText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->mTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public update(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 11
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v4, "update"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v9

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "address":Ljava/lang/String;
    const-string v2, ""

    .line 61
    .local v2, "headerDeliverToString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.showEstimatedDeliveryTimeInMinutes"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getEdtString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "edt":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090342

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    aput-object v0, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .end local v1    # "edt":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->setDeliveryHeaderText(Landroid/text/Spanned;)V

    .line 90
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/util/UIUtils;->formatScheduledDeliveryTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "time":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090341

    new-array v6, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
