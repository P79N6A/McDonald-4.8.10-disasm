.class Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$1;
.super Landroid/database/ContentObserver;
.source "FavoritesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$1;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    const-string v0, "onChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 160
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$1;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->access$002(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;Z)Z

    .line 161
    return-void
.end method
