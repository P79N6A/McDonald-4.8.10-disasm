.class Lcom/mcdonalds/app/storelocator/StoreLocatorController$5;
.super Ljava/lang/Object;
.source "StoreLocatorController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorController;->saveToFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    .line 942
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$600(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 949
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 952
    :cond_0
    return-void
.end method
