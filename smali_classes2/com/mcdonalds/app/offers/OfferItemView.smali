.class public Lcom/mcdonalds/app/offers/OfferItemView;
.super Landroid/widget/FrameLayout;
.source "OfferItemView.java"


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mNumberOfPunchesTextView:Landroid/widget/TextView;

.field private mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

.field private mPunchNumberSubtitleTextView:Landroid/widget/TextView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/offers/OfferItemView;->inflate(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 36
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/offers/OfferItemView;->inflate(Landroid/content/Context;)V

    .line 37
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

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const v0, 0x7f040184

    invoke-static {p1, v0, p0}, Lcom/mcdonalds/app/offers/OfferItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    const v0, 0x7f110063

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mImage:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f110136

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mTitle:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f1104a4

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mSubtitle:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f11050d

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f11050c

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f11049a

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    const v0, 0x7f040163

    invoke-static {p1, v0, p0}, Lcom/mcdonalds/app/offers/OfferItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v0, 0x7f1104a5

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mImage:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f1104a6

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mTitle:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f1104a7

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mSubtitle:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method public display(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x1

    const-string v3, "display"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mSubtitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09034b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 73
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSmallImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 75
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    const v4, 0x7f02024f

    .line 76
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/util/DownloadBitmap;

    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mImage:Landroid/widget/ImageView;

    invoke-direct {v4, p1, v5}, Lcom/mcdonalds/app/util/DownloadBitmap;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 77
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "totalPunch":I
    const/4 v0, 0x0

    .line 83
    .local v0, "currentPunch":I
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getTotalPunch()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getTotalPunch()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getCurrentPunch()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 88
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getCurrentPunch()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    :cond_2
    sub-int v1, v2, v0

    .line 92
    .local v1, "punchesLeft":I
    if-nez v0, :cond_4

    .line 93
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090714

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    .end local v0    # "currentPunch":I
    .end local v1    # "punchesLeft":I
    .end local v2    # "totalPunch":I
    :cond_3
    :goto_0
    return-void

    .line 96
    .restart local v0    # "currentPunch":I
    .restart local v1    # "punchesLeft":I
    .restart local v2    # "totalPunch":I
    :cond_4
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mNumberOfPunchesTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mPunchNumberSubtitleTextView:Landroid/widget/TextView;

    if-ne v1, v7, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f090667

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f09066e

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;
    .locals 2

    .prologue
    const-string v0, "getOffer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferItemView;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    return-object v0
.end method
