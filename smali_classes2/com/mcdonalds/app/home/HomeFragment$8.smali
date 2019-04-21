.class Lcom/mcdonalds/app/home/HomeFragment$8;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mRestartTimer:Z

.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeFragment;

.field final synthetic val$pagerIndicatorGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeFragment;Landroid/widget/RadioGroup;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->val$pagerIndicatorGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->mRestartTimer:Z

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onPageScrollStateChanged"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 501
    packed-switch p1, :pswitch_data_0

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 503
    :pswitch_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->mRestartTimer:Z

    if-eqz v0, :cond_0

    .line 504
    iput-boolean v3, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->mRestartTimer:Z

    .line 505
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$1300(Lcom/mcdonalds/app/home/HomeFragment;)V

    goto :goto_0

    .line 509
    :pswitch_1
    iput-boolean v4, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->mRestartTimer:Z

    .line 510
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment;->access$1400(Lcom/mcdonalds/app/home/HomeFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 501
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

    .line 491
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
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

    .line 495
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->val$pagerIndicatorGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment;->access$100(Lcom/mcdonalds/app/home/HomeFragment;)Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page_indicator_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment$8;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 497
    :cond_0
    return-void
.end method
