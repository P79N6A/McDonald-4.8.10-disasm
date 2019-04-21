.class public Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;
.super Landroid/widget/BaseAdapter;
.source "PaymentSelectionListAdapterHeaders.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;,
        Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;,
        Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;,
        Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;,
        Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private final mContext:Landroid/content/Context;

.field private mIncludesCash:Z

.field private mPaymentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentMethodIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/LinkedHashSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "paymentTypes":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mIncludesCash:Z

    .line 38
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mContext:Landroid/content/Context;

    .line 65
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->inflater:Landroid/view/LayoutInflater;

    .line 66
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentMethodIds:Ljava/util/Map;

    .line 68
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090186

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090157

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mContext:Landroid/content/Context;

    const v9, 0x7f09061b

    .line 71
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->sectionNames:[Ljava/lang/String;

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "includesCreditCard":Z
    const/4 v0, 0x0

    .line 78
    .local v0, "includes3rdPart":Z
    invoke-virtual {p3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    .line 80
    .local v2, "payment":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v4

    .line 81
    .local v4, "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentMethodIds:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v7, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$1;->$SwitchMap$com$mcdonalds$sdk$modules$models$PaymentMethod$PaymentMode:[I

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mIncludesCash:Z

    goto :goto_0

    .line 88
    :pswitch_1
    const/4 v1, 0x1

    .line 89
    goto :goto_0

    .line 91
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "payment":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .end local v4    # "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    :cond_0
    iget-boolean v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mIncludesCash:Z

    if-eqz v6, :cond_1

    .line 107
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    new-instance v7, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    sget-object v8, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1
    if-eqz v0, :cond_2

    .line 111
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    new-instance v7, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    sget-object v8, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_2
    if-eqz v1, :cond_4

    .line 115
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 118
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 119
    .local v3, "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    new-instance v8, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    sget-object v9, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    sget-object v10, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Card:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    invoke-direct {v8, p0, v9, v10, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    .end local v3    # "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_3
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isOneClickPaymentFlow()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 124
    new-instance v5, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;-><init>()V

    .line 125
    .local v5, "stub":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentMethodIds:Ljava/util/Map;

    sget-object v7, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setPaymentMethodId(Ljava/lang/Integer;)V

    .line 126
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mContext:Landroid/content/Context;

    const v7, 0x7f090a4a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setAlias(Ljava/lang/String;)V

    .line 127
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setNewCardStub(Z)V

    .line 128
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    new-instance v7, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    sget-object v8, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    sget-object v9, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Card:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    invoke-direct {v7, p0, v8, v9, v5}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v5    # "stub":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_4
    :goto_2
    return-void

    .line 130
    :cond_5
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    new-instance v7, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    sget-object v8, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    sget-object v9, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Add:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    const/4 v10, 0x0

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    new-instance v7, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    sget-object v8, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    sget-object v9, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->One_Time:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    const/4 v10, 0x0

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f040177

    const v8, 0x7f1104ef

    const v7, 0x7f1100c3

    const v6, 0x7f040176

    const/4 v5, 0x0

    const-string v2, "createView"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 289
    const/4 v0, 0x0

    .line 291
    .local v0, "ret":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;

    invoke-direct {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;-><init>()V

    .line 293
    .local v1, "selectionHolder":Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;
    sget-object v3, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$1;->$SwitchMap$com$mcdonalds$sdk$modules$models$PaymentMethod$PaymentMode:[I

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 348
    :goto_0
    return-object v0

    .line 297
    :pswitch_0
    sget-object v3, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$1;->$SwitchMap$com$mcdonalds$app$ordering$preparepayment$PaymentSelectionListAdapterHeaders$CardRow:[I

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getCreditCardRowType()Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v6, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 301
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardType:Landroid/widget/TextView;

    .line 302
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardNumber:Landroid/widget/TextView;

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v9, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 309
    const v2, 0x7f1100dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->label:Landroid/widget/TextView;

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    :pswitch_3
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v9, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 317
    const v2, 0x7f1100dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->label:Landroid/widget/TextView;

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :pswitch_4
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v6, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 330
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardType:Landroid/widget/TextView;

    .line 331
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardNumber:Landroid/widget/TextView;

    .line 332
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    :pswitch_5
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v6, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardType:Landroid/widget/TextView;

    .line 339
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardNumber:Landroid/widget/TextView;

    .line 340
    const v2, 0x7f1100b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->iv_ali_img:Landroid/widget/ImageView;

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 297
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCardRowType(I)Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getCardRowType"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getCreditCardRowType()Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getHeaderId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v2, "getHeaderView"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    if-nez p2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040189

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 364
    new-instance v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;

    invoke-direct {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;-><init>()V

    .line 365
    .local v1, "holder":Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;
    const v2, 0x7f1100bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 366
    const v2, 0x7f110510

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;->topBorder:Landroid/view/View;

    .line 367
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 373
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->sectionNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v2

    aget-object v0, v3, v2

    .line 374
    .local v0, "headerText":Ljava/lang/String;
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    .line 378
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-ne v2, v3, :cond_2

    .line 379
    :cond_0
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_3

    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mIncludesCash:Z

    if-eqz v2, :cond_3

    .line 386
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;->topBorder:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :goto_2
    return-object p2

    .line 369
    .end local v0    # "headerText":Ljava/lang/String;
    .end local v1    # "holder":Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;

    .restart local v1    # "holder":Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;
    goto :goto_0

    .line 381
    .restart local v0    # "headerText":Ljava/lang/String;
    :cond_2
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 388
    :cond_3
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$HeaderViewHolder;->topBorder:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
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

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

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

    .line 184
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "getItemViewType"

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-ne v1, v4, :cond_0

    move v1, v2

    .line 208
    :goto_0
    return v1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-ne v1, v4, :cond_1

    move v1, v2

    .line 199
    goto :goto_0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-ne v1, v4, :cond_3

    .line 201
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    .line 202
    .local v0, "paymentInfo":Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getCreditCardRowType()Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    move-result-object v1

    sget-object v4, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Card:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    if-ne v1, v4, :cond_2

    move v1, v2

    .line 203
    goto :goto_0

    :cond_2
    move v1, v3

    .line 205
    goto :goto_0

    .line 208
    .end local v0    # "paymentInfo":Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPaymentCard(I)Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getPaymentCard"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getCreditCardRowType()Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Card:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not a valid CreditCard index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPaymentMethodID(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const-string v2, "getPaymentMethodID"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    .line 46
    .local v1, "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentMethodIds:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 47
    .local v0, "paymentMethodId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 52
    .end local v0    # "paymentMethodId":Ljava/lang/Integer;
    .end local v1    # "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getPaymentType(I)Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getPaymentType"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 216
    if-nez p2, :cond_0

    .line 217
    invoke-direct {p0, p1, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 219
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;

    .line 221
    .local v1, "selectionHolder":Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;
    const-class v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;

    invoke-static {p2, v2, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 223
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mPaymentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;

    .line 224
    .local v0, "paymentInfo":Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->iv_ali_img:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->iv_ali_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    :cond_1
    sget-object v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$1;->$SwitchMap$com$mcdonalds$sdk$modules$models$PaymentMethod$PaymentMode:[I

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 277
    :cond_2
    :goto_0
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v2, "getView"

    invoke-static {p0, v2}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-static {v5, v2}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 230
    :pswitch_0
    sget-object v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$1;->$SwitchMap$com$mcdonalds$app$ordering$preparepayment$PaymentSelectionListAdapterHeaders$CardRow:[I

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getCreditCardRowType()Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardType:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->isNewCardStub()Z

    move-result v2

    if-nez v2, :cond_3

    .line 234
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardType:Landroid/widget/TextView;

    const v3, 0x7f0906c1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 238
    :goto_1
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 241
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 242
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardType:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 244
    :cond_4
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$PaymentInfo;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->label:Landroid/widget/TextView;

    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 251
    :pswitch_3
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->label:Landroid/widget/TextView;

    const v3, 0x7f090404

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 258
    :pswitch_4
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardType:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 260
    iget-object v3, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardNumber:Landroid/widget/TextView;

    .line 261
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mContext:Landroid/content/Context;

    const v4, 0x7f090157

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 261
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mContext:Landroid/content/Context;

    const v4, 0x7f09015c

    .line 262
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 268
    :pswitch_5
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardType:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 270
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->cardNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->mContext:Landroid/content/Context;

    const v4, 0x7f0900cb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->iv_ali_img:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$SelectionHolder;->iv_ali_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 230
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const-string v0, "getViewTypeCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;->values()[Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
