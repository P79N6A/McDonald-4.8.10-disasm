.class Lcom/mcdonalds/app/tutorial/TutorialFragment$5;
.super Ljava/lang/Object;
.source "TutorialFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/tutorial/TutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/tutorial/TutorialFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/tutorial/TutorialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/tutorial/TutorialFragment;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment$5;->this$0:Lcom/mcdonalds/app/tutorial/TutorialFragment;

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

    .line 252
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

    .line 235
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-string v1, "onPageSelected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment$5;->this$0:Lcom/mcdonalds/app/tutorial/TutorialFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Slide"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnSlideEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment$5;->this$0:Lcom/mcdonalds/app/tutorial/TutorialFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->access$300(Lcom/mcdonalds/app/tutorial/TutorialFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 242
    .local v0, "lastItem":I
    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment$5;->this$0:Lcom/mcdonalds/app/tutorial/TutorialFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->access$400(Lcom/mcdonalds/app/tutorial/TutorialFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment$5;->this$0:Lcom/mcdonalds/app/tutorial/TutorialFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->access$500(Lcom/mcdonalds/app/tutorial/TutorialFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0907ff

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment$5;->this$0:Lcom/mcdonalds/app/tutorial/TutorialFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->access$400(Lcom/mcdonalds/app/tutorial/TutorialFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment$5;->this$0:Lcom/mcdonalds/app/tutorial/TutorialFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->access$500(Lcom/mcdonalds/app/tutorial/TutorialFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f090800

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
