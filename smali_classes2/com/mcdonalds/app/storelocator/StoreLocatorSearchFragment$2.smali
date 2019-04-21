.class Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$2;
.super Ljava/lang/Object;
.source "StoreLocatorSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "onItemClick"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getSearchView()Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    move-result-object v1

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->setText(Ljava/lang/String;)V

    .line 81
    return-void
.end method
