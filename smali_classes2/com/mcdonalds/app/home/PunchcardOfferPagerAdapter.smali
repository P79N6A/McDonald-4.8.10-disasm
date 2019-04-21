.class public Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "PunchcardOfferPagerAdapter.java"


# instance fields
.field private final mCurrentPunch:I

.field private final mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

.field private final mTotalPunch:I


# direct methods
.method public constructor <init>(IILandroid/support/v4/app/FragmentManager;Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 0
    .param p1, "currentPunch"    # I
    .param p2, "totalPunch"    # I
    .param p3, "supportFragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p4, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    .line 24
    invoke-direct {p0, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 25
    iput p1, p0, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;->mCurrentPunch:I

    .line 26
    iput p2, p0, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;->mTotalPunch:I

    .line 27
    iput-object p4, p0, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const-string v1, "getCount"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "count":I
    iget v1, p0, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;->mTotalPunch:I

    rem-int/lit8 v1, v1, 0xa

    if-lez v1, :cond_0

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 46
    :cond_0
    iget v1, p0, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;->mTotalPunch:I

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const-string v3, "getItem"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget v3, p0, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;->mCurrentPunch:I

    mul-int/lit8 v4, p1, 0xa

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 33
    .local v0, "pageCurrentPunch":I
    iget v3, p0, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;->mTotalPunch:I

    mul-int/lit8 v4, p1, 0xa

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 34
    .local v1, "pageTotalPunch":I
    iget-object v3, p0, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 36
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v0, v1, p1, v3}, Lcom/mcdonalds/app/offers/PunchcardPageFragment;->newInstance(IIILjava/lang/String;)Lcom/mcdonalds/app/offers/PunchcardPageFragment;

    move-result-object v2

    .line 37
    .local v2, "punchcardPageFragment":Lcom/mcdonalds/app/offers/PunchcardPageFragment;
    return-object v2
.end method
