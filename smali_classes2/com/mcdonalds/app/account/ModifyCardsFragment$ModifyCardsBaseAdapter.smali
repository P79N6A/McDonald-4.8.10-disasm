.class public Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "ModifyCardsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ModifyCardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModifyCardsBaseAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mPaymentCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/account/ModifyCardsFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, "mPaymentCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 303
    iput-object p2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->mPaymentCards:Ljava/util/List;

    .line 304
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->mPaymentCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->mPaymentCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItemId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->mPaymentCards:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 330
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 332
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 333
    const v3, 0x7f040043

    invoke-virtual {v1, v3, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 334
    new-instance v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;

    invoke-direct {v0, p0, v10}, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;Lcom/mcdonalds/app/account/ModifyCardsFragment$1;)V

    .line 335
    .local v0, "holder":Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;
    const v3, 0x7f1100f2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;->delete_btn:Landroid/widget/Button;

    .line 336
    const v3, 0x7f11013e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;->card_txt:Landroid/widget/TextView;

    .line 337
    const v3, 0x7f110066

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;->arrow_img:Landroid/widget/ImageView;

    .line 338
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 342
    :goto_0
    const-class v3, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;

    invoke-static {p2, v3, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 344
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 346
    .local v2, "rowItem":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 347
    iget-object v3, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;->card_txt:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_1
    iget-object v3, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;->delete_btn:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 355
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$300(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 356
    iget-object v3, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;->delete_btn:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    :goto_2
    iget-object v3, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;->delete_btn:Landroid/widget/Button;

    new-instance v4, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$1;-><init>(Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v3, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;->arrow_img:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v3, "getView"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-static {v10, v3}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 340
    .end local v0    # "holder":Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;
    .end local v2    # "rowItem":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;
    goto :goto_0

    .line 349
    .restart local v2    # "rowItem":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_1
    iget-object v3, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;->card_txt:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090148

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v5

    const-string v6, "*"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 358
    :cond_2
    iget-object v3, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$ViewHolder;->delete_btn:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method
