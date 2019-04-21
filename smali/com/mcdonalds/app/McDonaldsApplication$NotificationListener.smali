.class Lcom/mcdonalds/app/McDonaldsApplication$NotificationListener;
.super Landroid/content/BroadcastReceiver;
.source "McDonaldsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/McDonaldsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 179
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onReceive"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    const-string v0, "MCD_NOTIFICATION_CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/mcdonalds/app/ui/font/FontManager;->initializeFonts()V

    .line 185
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/mcdonalds/app/McDonaldsApplication;->access$102(Lcom/mcdonalds/app/McDonaldsApplication;Z)Z

    .line 187
    :cond_0
    return-void
.end method
