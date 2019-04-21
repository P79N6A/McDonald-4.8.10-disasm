.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;
.super Ljava/lang/Object;
.source "StoreLocatorMapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isMapOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$200(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    .line 196
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    .line 189
    .local v0, "expand":Z
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$400(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getItem(I)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    move-result-object v1

    .line 190
    .local v1, "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->isExpanded()Z

    move-result v0

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)V

    goto :goto_0
.end method
