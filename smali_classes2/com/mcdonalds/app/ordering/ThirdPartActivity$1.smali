.class Lcom/mcdonalds/app/ordering/ThirdPartActivity$1;
.super Ljava/lang/Object;
.source "ThirdPartActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/ThirdPartActivity;->loadResultsURI(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$1;->this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/ThirdPartActivity$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$1;->this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/ThirdPartActivity;->access$100(Lcom/mcdonalds/app/ordering/ThirdPartActivity;Ljava/lang/String;)V

    .line 83
    return-void
.end method
