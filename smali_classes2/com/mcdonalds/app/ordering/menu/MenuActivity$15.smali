.class Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setupTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

.field final synthetic val$fragmentPager:Lcom/mcdonalds/app/ui/NonSwipeableViewPager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;Lcom/mcdonalds/app/ui/NonSwipeableViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->val$fragmentPager:Lcom/mcdonalds/app/ui/NonSwipeableViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onTabReselected"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->val$fragmentPager:Lcom/mcdonalds/app/ui/NonSwipeableViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/app/ui/NonSwipeableViewPager;->setCurrentItem(IZ)V

    .line 705
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->access$400(Lcom/mcdonalds/app/ordering/menu/MenuActivity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setTitle(I)V

    .line 706
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onTabSelected"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->val$fragmentPager:Lcom/mcdonalds/app/ui/NonSwipeableViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/app/ui/NonSwipeableViewPager;->setCurrentItem(IZ)V

    .line 693
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->access$400(Lcom/mcdonalds/app/ordering/menu/MenuActivity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setTitle(I)V

    .line 694
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onTabUnselected"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->val$fragmentPager:Lcom/mcdonalds/app/ui/NonSwipeableViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/app/ui/NonSwipeableViewPager;->setCurrentItem(IZ)V

    .line 699
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->access$400(Lcom/mcdonalds/app/ordering/menu/MenuActivity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setTitle(I)V

    .line 700
    return-void
.end method
