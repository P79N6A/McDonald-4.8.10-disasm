.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;
.super Ljava/lang/Object;
.source "StoreLocatorMapFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p2, "x1"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x1

    const-string v1, "onPageScrollStateChanged"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    if-ne p1, v5, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$400(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getItem(I)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    move-result-object v0

    .line 1116
    .local v0, "visibleFragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->reset()V

    .line 1118
    .end local v0    # "visibleFragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const-string v0, "onPageScrolled"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const-string v2, "onPageSelected"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1094
    const-string v2, "/restaurant-locator"

    const-string v3, "Store"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnSlideEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$400(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getStore(I)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 1098
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2300(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 1100
    .local v0, "section":Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$400(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->clearStoresState(I)V

    .line 1102
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2400(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1103
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2402(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z

    .line 1107
    :cond_0
    :goto_1
    return-void

    .line 1098
    .end local v0    # "section":Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    :cond_1
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    goto :goto_0

    .line 1104
    .restart local v0    # "section":Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    :cond_2
    if-eqz v1, :cond_0

    .line 1105
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1700(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto :goto_1
.end method
