.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$2;
.super Ljava/lang/Object;
.source "StoreLocatorMapFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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
    .line 221
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const-string v1, "onLayoutChange"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$700(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 227
    .local v0, "parent":Landroid/view/View;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$700(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 228
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$700(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/16 v4, 0xb4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 229
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$802(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;F)F

    .line 230
    return-void
.end method
