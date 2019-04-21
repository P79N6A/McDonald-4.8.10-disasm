.class public Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;
.super Landroid/widget/FrameLayout;
.source "PickupLocationView.java"


# instance fields
.field private mDisclosureIcon:Landroid/widget/ImageView;

.field private mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mStoreName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->inflate(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->inflate(Landroid/content/Context;)V

    .line 29
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

    .line 33
    const v0, 0x7f040179

    invoke-static {p1, v0, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->initWidgets()V

    .line 38
    :cond_0
    return-void
.end method

.method private initWidgets()V
    .locals 2

    .prologue
    const-string v0, "initWidgets"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const v0, 0x7f1104f8

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->mStoreName:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f1104f9

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->mDisclosureIcon:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->mDisclosureIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->mStoreName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method


# virtual methods
.method public setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "setStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 53
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->refresh()V

    .line 54
    return-void
.end method
