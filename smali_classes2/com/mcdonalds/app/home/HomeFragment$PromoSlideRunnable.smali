.class Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;
.super Ljava/util/TimerTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromoSlideRunnable"
.end annotation


# instance fields
.field private mIndex:I

.field private final mViewPager:Landroid/support/v4/view/ViewPager;

.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/home/HomeFragment;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p2, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 951
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 952
    iput-object p2, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 953
    if-eqz p2, :cond_0

    .line 954
    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->mIndex:I

    .line 956
    :cond_0
    return-void
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;)Landroid/support/v4/view/ViewPager;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment$PromoSlideRunnable"

    const-string v2, "access$1500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment$PromoSlideRunnable"

    const-string v2, "access$1600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    iget v0, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->mIndex:I

    return v0
.end method

.method static synthetic access$1602(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment$PromoSlideRunnable"

    const-string v2, "access$1602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    iput p1, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->mIndex:I

    return p1
.end method

.method static synthetic access$1604(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment$PromoSlideRunnable"

    const-string v2, "access$1604"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    iget v0, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;->mIndex:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v1, "run"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 961
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable$1;-><init>(Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 970
    return-void
.end method
