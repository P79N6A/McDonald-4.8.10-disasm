.class public Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CheckinAlertFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;,
        Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;",
            ">;"
        }
    .end annotation
.end field

.field private showWarning:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "dataSet":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;->dataSet:Ljava/util/List;

    .line 26
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.ordering.showWarningOnAlertForOOS"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;->showWarning:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    const-string v0, "getItemCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    const-string v0, "onBindViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    check-cast p1, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;->onBindViewHolder(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v3, "onBindViewHolder"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v8

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;

    .line 41
    .local v2, "problematicProduct":Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->access$000(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v2, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;->productName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-boolean v3, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;->showWarning:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;->shouldShowAlert:Z

    if-eqz v3, :cond_0

    .line 44
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->access$000(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0201be

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 45
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->access$000(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v0

    .line 46
    .local v0, "bounds":I
    invoke-virtual {v1, v8, v8, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->access$000(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 52
    .end local v0    # "bounds":I
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-boolean v3, v2, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;->mainProduct:Z

    if-eqz v3, :cond_1

    .line 53
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->access$100(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_1
    return-void

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->access$000(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->access$100(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const-string v0, "onCreateViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040046

    const/4 v3, 0x0

    .line 33
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;Landroid/view/View;)V

    return-object v1
.end method
