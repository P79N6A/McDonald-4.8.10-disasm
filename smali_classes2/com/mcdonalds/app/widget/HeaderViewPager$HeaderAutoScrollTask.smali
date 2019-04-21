.class Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;
.super Ljava/util/TimerTask;
.source "HeaderViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/HeaderViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAutoScrollTask"
.end annotation


# instance fields
.field mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/widget/HeaderViewPager;)V
    .locals 0
    .param p1, "pager"    # Lcom/mcdonalds/app/widget/HeaderViewPager;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    .line 170
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;->mHeaderViewPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    new-instance v1, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask$1;-><init>(Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/HeaderViewPager;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method
