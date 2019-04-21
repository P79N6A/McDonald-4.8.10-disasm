.class Lcom/mcdonalds/app/widget/PagerIndicator$1;
.super Landroid/database/DataSetObserver;
.source "PagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/widget/PagerIndicator;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/widget/PagerIndicator;

.field final synthetic val$pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/widget/PagerIndicator;Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/widget/PagerIndicator;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mcdonalds/app/widget/PagerIndicator$1;->this$0:Lcom/mcdonalds/app/widget/PagerIndicator;

    iput-object p2, p0, Lcom/mcdonalds/app/widget/PagerIndicator$1;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    const-string v0, "onChanged"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/widget/PagerIndicator$1;->this$0:Lcom/mcdonalds/app/widget/PagerIndicator;

    iget-object v1, p0, Lcom/mcdonalds/app/widget/PagerIndicator$1;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/widget/PagerIndicator;->access$000(Lcom/mcdonalds/app/widget/PagerIndicator;Landroid/support/v4/view/ViewPager;)V

    .line 36
    return-void
.end method
