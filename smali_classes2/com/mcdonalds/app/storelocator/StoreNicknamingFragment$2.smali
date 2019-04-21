.class Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$2;
.super Ljava/lang/Object;
.source "StoreNicknamingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$2;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$2;->val$listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 135
    return-void
.end method
