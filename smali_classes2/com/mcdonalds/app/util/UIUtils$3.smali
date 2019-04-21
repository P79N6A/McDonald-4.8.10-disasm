.class final Lcom/mcdonalds/app/util/UIUtils$3;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/UIUtils;->getDayPartImageUrl(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;ILcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(ILcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0

    .prologue
    .line 784
    iput p1, p0, Lcom/mcdonalds/app/util/UIUtils$3;->val$position:I

    iput-object p2, p0, Lcom/mcdonalds/app/util/UIUtils$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const-string v0, "update"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    iget v0, p0, Lcom/mcdonalds/app/util/UIUtils$3;->val$position:I

    iget-object v1, p0, Lcom/mcdonalds/app/util/UIUtils$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->access$100(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 788
    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 789
    return-void
.end method
