.class Lcom/mcdonalds/app/firstload/SelectStoreActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SelectStoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/firstload/SelectStoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/firstload/SelectStoreActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/firstload/SelectStoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mcdonalds/app/firstload/SelectStoreActivity$1;->this$0:Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "onReceive"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/firstload/SelectStoreActivity$1;->this$0:Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/firstload/SelectStoreActivity;->finish()V

    .line 43
    return-void
.end method
