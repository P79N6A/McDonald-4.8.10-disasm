.class final Lcom/threatmetrix/TrustDefender/ap$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/ap;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/ap;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ap$b;->a:Lcom/threatmetrix/TrustDefender/ap;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 546
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap$b;->a:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ap;->a()V

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap$b;->a:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ap;->b()V

    goto :goto_0
.end method
