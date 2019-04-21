.class public Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;
.super Ljava/lang/Object;
.source "PickupLocationHolder.java"


# instance fields
.field private mContainer:Landroid/view/View;

.field private mDisclosureIcon:Landroid/widget/ImageView;

.field private mDistance:Landroid/widget/TextView;

.field private mExtraView:Landroid/view/View;

.field private mInfoIcon:Landroid/widget/ImageView;

.field private mPickupStoreView:Landroid/view/View;

.field private mStoreName:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mContainer:Landroid/view/View;

    .line 27
    const v0, 0x7f1104f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mPickupStoreView:Landroid/view/View;

    .line 28
    const v0, 0x7f1104fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mExtraView:Landroid/view/View;

    .line 29
    const v0, 0x7f1104f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mTitle:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f1104f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mStoreName:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f1104fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mDistance:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f1104f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mDisclosureIcon:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f1104fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mInfoIcon:Landroid/widget/ImageView;

    .line 34
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public getDisclosureIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getDisclosureIcon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mDisclosureIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDistance()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getDistance"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mDistance:Landroid/widget/TextView;

    return-object v0
.end method

.method public getExtraView()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getExtraView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mExtraView:Landroid/view/View;

    return-object v0
.end method

.method public getInfoIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getInfoIcon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mInfoIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPickupStoreView()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getPickupStoreView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mPickupStoreView:Landroid/view/View;

    return-object v0
.end method

.method public getStoreName()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getStoreName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->mStoreName:Landroid/widget/TextView;

    return-object v0
.end method
