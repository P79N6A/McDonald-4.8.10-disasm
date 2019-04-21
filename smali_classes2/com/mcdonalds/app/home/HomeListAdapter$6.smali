.class Lcom/mcdonalds/app/home/HomeListAdapter$6;
.super Ljava/lang/Object;
.source "HomeListAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeListAdapter;->getNoOffersView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

.field final synthetic val$noOfferViewHolder:Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeListAdapter;Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeListAdapter;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->val$noOfferViewHolder:Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v0, "update"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->access$400(Lcom/mcdonalds/app/home/HomeListAdapter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->val$noOfferViewHolder:Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;

    iget-object v0, v0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->val$noOfferViewHolder:Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;

    iget-object v0, v0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->access$500(Lcom/mcdonalds/app/home/HomeListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->access$600(Lcom/mcdonalds/app/home/HomeListAdapter;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->val$noOfferViewHolder:Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mCheckBackPrompt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    .line 598
    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->access$300(Lcom/mcdonalds/app/home/HomeListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v3, "interface.dashboard.offersTextNotSubscribed"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    :goto_1
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->val$noOfferViewHolder:Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;

    iget-object v0, v0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->val$noOfferViewHolder:Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;

    iget-object v0, v0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->val$noOfferViewHolder:Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;

    iget-object v1, v0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mCheckBackPrompt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$6;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    .line 601
    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->access$300(Lcom/mcdonalds/app/home/HomeListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v3, "interface.dashboard.offersTextNoOffers"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
