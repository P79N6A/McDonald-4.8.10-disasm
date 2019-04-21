.class Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$6;
.super Ljava/lang/Object;
.source "StoreDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onLongClick"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Call Restaurant"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "dialIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1200(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 364
    return v4
.end method
