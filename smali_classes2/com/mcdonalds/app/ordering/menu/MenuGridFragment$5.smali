.class Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$5;
.super Landroid/database/ContentObserver;
.source "MenuGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const-string v0, "onChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 300
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->updateFavorites()V

    .line 301
    return-void
.end method