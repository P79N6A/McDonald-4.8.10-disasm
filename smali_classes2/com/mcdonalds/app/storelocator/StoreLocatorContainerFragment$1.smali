.class Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$1;
.super Ljava/lang/Object;
.source "StoreLocatorContainerFragment.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const-string v0, "onTabReselected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "onTabSelected"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->access$002(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;I)I

    .line 307
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;I)V

    .line 309
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 306
    goto :goto_0
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const-string v0, "onTabUnselected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    return-void
.end method
