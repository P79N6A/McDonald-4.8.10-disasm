.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$9;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populatePromos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

.field final synthetic val$indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/app/widget/PagerIndicatorGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$9;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$9;->val$indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const-string v0, "onPageScrollStateChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 683
    packed-switch p1, :pswitch_data_0

    .line 695
    :goto_0
    return-void

    .line 685
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$9;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/widget/HeaderViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->onResume()V

    goto :goto_0

    .line 688
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$9;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/widget/HeaderViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->onPause()V

    goto :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    .line 672
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "onPageSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$9;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$9;->val$indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->select(I)V

    .line 679
    :cond_0
    return-void
.end method
