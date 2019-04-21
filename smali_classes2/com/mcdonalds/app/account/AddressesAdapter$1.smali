.class Lcom/mcdonalds/app/account/AddressesAdapter$1;
.super Ljava/lang/Object;
.source "AddressesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/AddressesAdapter;->onBindViewHolder(Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/AddressesAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/AddressesAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/AddressesAdapter;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mcdonalds/app/account/AddressesAdapter$1;->this$0:Lcom/mcdonalds/app/account/AddressesAdapter;

    iput p2, p0, Lcom/mcdonalds/app/account/AddressesAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter$1;->this$0:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/account/AddressesAdapter;->access$000(Lcom/mcdonalds/app/account/AddressesAdapter;)Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter$1;->this$0:Lcom/mcdonalds/app/account/AddressesAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/account/AddressesAdapter;->access$000(Lcom/mcdonalds/app/account/AddressesAdapter;)Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/account/AddressesAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/account/AddressesAdapter$ItemClickListener;->onItemDismissed(I)V

    .line 104
    :cond_0
    return-void
.end method
