.class public Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "PromoFragmentStatePagerAdapter.java"


# instance fields
.field private final imageViewFragmentCache:[Lcom/mcdonalds/app/util/ImageViewFragment;

.field private final mOnClickListener:Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;

.field private final mPromoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/Promo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v4/app/FragmentManager;Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;)V
    .locals 2
    .param p2, "supportFragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "onClickListener"    # Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/Promo;",
            ">;",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "promoList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/model/Promo;>;"
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->mPromoList:Ljava/util/List;

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->mPromoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mcdonalds/app/util/ImageViewFragment;

    iput-object v0, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->imageViewFragmentCache:[Lcom/mcdonalds/app/util/ImageViewFragment;

    .line 36
    iput-object p3, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->mOnClickListener:Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->mPromoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const-string v1, "getItem"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->mPromoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/model/Promo;

    .line 44
    .local v0, "promo":Lcom/mcdonalds/app/model/Promo;
    iget-object v1, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->imageViewFragmentCache:[Lcom/mcdonalds/app/util/ImageViewFragment;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->imageViewFragmentCache:[Lcom/mcdonalds/app/util/ImageViewFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/util/ImageViewFragment;->newInstance(Lcom/mcdonalds/app/model/Promo;)Lcom/mcdonalds/app/util/ImageViewFragment;

    move-result-object v2

    aput-object v2, v1, p1

    .line 46
    iget-object v1, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->imageViewFragmentCache:[Lcom/mcdonalds/app/util/ImageViewFragment;

    aget-object v1, v1, p1

    invoke-virtual {v1, v5}, Lcom/mcdonalds/app/util/ImageViewFragment;->refreshImage(Z)V

    .line 47
    iget-object v1, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->mOnClickListener:Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->imageViewFragmentCache:[Lcom/mcdonalds/app/util/ImageViewFragment;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->mOnClickListener:Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/ImageViewFragment;->setOnClickListener(Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->imageViewFragmentCache:[Lcom/mcdonalds/app/util/ImageViewFragment;

    aget-object v1, v1, p1

    return-object v1
.end method
