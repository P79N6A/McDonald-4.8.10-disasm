.class Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$1;
.super Ljava/lang/Object;
.source "CommunicationsPreferencesFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onCheckedChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->access$002(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Z)Z

    .line 137
    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->access$100(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->access$202(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->access$100(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->access$202(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0
.end method
