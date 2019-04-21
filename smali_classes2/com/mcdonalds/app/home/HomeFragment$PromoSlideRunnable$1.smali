.class Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    .prologue
    .line 961
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 964
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->access$1500(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->access$1500(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->access$1600(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 966
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    invoke-static {v1}, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->access$1604(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;)I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable$1;->this$1:Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    invoke-static {v2}, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->access$1500(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->access$1602(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;I)I

    .line 968
    :cond_0
    return-void
.end method
