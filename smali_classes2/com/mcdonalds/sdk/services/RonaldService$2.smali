.class Lcom/mcdonalds/sdk/services/RonaldService$2;
.super Landroid/content/BroadcastReceiver;
.source "RonaldService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/RonaldService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/RonaldService;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/RonaldService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/RonaldService;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/RonaldService$2;->this$0:Lcom/mcdonalds/sdk/services/RonaldService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    const-string v1, "EXTRA_MESSAGE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService$2;->this$0:Lcom/mcdonalds/sdk/services/RonaldService;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/RonaldService;->access$100(Lcom/mcdonalds/sdk/services/RonaldService;Ljava/lang/String;)V

    .line 121
    return-void
.end method
