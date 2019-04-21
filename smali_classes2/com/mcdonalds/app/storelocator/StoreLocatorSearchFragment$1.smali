.class Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$1;
.super Ljava/lang/Object;
.source "StoreLocatorSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 62
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getSearchView()Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "searchText":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->displayFilters(Ljava/lang/String;)V

    .line 69
    .end local v0    # "searchText":Ljava/lang/String;
    :cond_0
    return-void
.end method
