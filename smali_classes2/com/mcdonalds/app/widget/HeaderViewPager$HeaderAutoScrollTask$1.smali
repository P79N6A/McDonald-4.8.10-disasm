.class Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;
.super Ljava/lang/Object;
.source "HeaderViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;->this$0:Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v2, "run"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;->this$0:Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    iget-object v2, v2, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 182
    .local v1, "location":[I
    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;->this$0:Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    iget-object v2, v2, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getLocationOnScreen([I)V

    .line 183
    const/4 v2, 0x1

    aget v2, v1, v2

    if-lez v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;->this$0:Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    iget-object v2, v2, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-virtual {v2, v4, v5}, Lcom/mcdonalds/app/widget/HeaderViewPager;->setScrollDurationFactor(D)V

    .line 185
    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;->this$0:Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    iget-object v2, v2, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;->this$0:Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    iget-object v3, v3, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    .line 186
    .local v0, "itemToScrollTo":I
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;->this$0:Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    iget-object v2, v2, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->setCurrentItem(I)V

    .line 187
    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;->this$0:Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    iget-object v2, v2, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v5}, Lcom/mcdonalds/app/widget/HeaderViewPager;->setScrollDurationFactor(D)V

    goto :goto_0

    .line 185
    .end local v0    # "itemToScrollTo":I
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;->this$0:Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    iget-object v2, v2, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_1
.end method
