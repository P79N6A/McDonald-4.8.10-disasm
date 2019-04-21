.class public Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProductCustomizationViewHolder.java"


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mCost:Landroid/widget/TextView;

.field private mHeader:Landroid/widget/TextView;

.field private mItem:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;

.field private mMinus:Landroid/view/View;

.field private final mOnClickMinus:Landroid/view/View$OnClickListener;

.field private final mOnClickPlus:Landroid/view/View$OnClickListener;

.field private mPlus:Landroid/view/View;

.field private mQuantity:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    new-instance v0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder$1;-><init>(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mOnClickPlus:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder$2;-><init>(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mOnClickMinus:Landroid/view/View$OnClickListener;

    .line 26
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 27
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->bindViews(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;)Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.customization.ProductCustomizationViewHolder"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mItem:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.customization.ProductCustomizationViewHolder"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method private bindViews(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "bindViews"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const v0, 0x7f110374

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mHeader:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f110067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mTitle:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f110433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mCost:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f110435

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mQuantity:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f110436

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mPlus:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mPlus:Landroid/view/View;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mOnClickPlus:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f110434

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mMinus:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mMinus:Landroid/view/View;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mOnClickMinus:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public bind(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;)V
    .locals 3
    .param p1, "item"    # Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;

    .prologue
    const/4 v2, 0x0

    const-string v0, "bind"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mItem:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;

    .line 48
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090179

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mCost:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->getCost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mQuantity:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->getQuantity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mPlus:Landroid/view/View;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->canAdd()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mMinus:Landroid/view/View;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->canRemove()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    return-void

    .line 50
    :cond_0
    const v0, 0x7f090076

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->mHeader:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
