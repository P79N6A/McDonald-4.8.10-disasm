.class Lcom/mcdonalds/app/startup/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/startup/SplashActivity;->startGuestMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/startup/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/startup/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/mcdonalds/app/startup/SplashActivity$1;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity$1;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/startup/SplashActivity;->access$000(Lcom/mcdonalds/app/startup/SplashActivity;)V

    .line 304
    return-void
.end method
