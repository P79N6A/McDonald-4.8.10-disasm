.class Lcom/mcdonalds/sdk/services/RonaldService$1;
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
    .line 107
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/RonaldService$1;->this$0:Lcom/mcdonalds/sdk/services/RonaldService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    const-string v1, "EXTRA_MESSAGE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService$1;->this$0:Lcom/mcdonalds/sdk/services/RonaldService;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/RonaldService$1;->this$0:Lcom/mcdonalds/sdk/services/RonaldService;

    sget v3, Lcom/mcdonalds/sdk/R$string;->error_title:I

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/RonaldService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/sdk/services/RonaldService;->access$000(Lcom/mcdonalds/sdk/services/RonaldService;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
