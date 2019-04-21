.class Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$2;
.super Ljava/lang/Object;
.source "StoreLocatorContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->onResume()V
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
    .line 422
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

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

    .line 425
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->access$200(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getField()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;Z)V

    .line 426
    return-void
.end method
