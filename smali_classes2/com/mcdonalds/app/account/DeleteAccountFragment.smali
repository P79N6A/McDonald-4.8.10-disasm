.class public Lcom/mcdonalds/app/account/DeleteAccountFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "DeleteAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mDeleteCalled:Z

.field private mDeregisterAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/AlertDialog;

.field private mGoHome:Z

.field private final mLogoutAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/mcdonalds/app/account/DeleteAccountFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 181
    new-instance v0, Lcom/mcdonalds/app/account/DeleteAccountFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment$2;-><init>(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDeregisterAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 215
    new-instance v0, Lcom/mcdonalds/app/account/DeleteAccountFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment$3;-><init>(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mLogoutAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/account/DeleteAccountFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.DeleteAccountFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDeleteCalled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/DeleteAccountFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.DeleteAccountFragment"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->allowActivityExit(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/DeleteAccountFragment;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.DeleteAccountFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDeregisterAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.DeleteAccountFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->createDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/DeleteAccountFragment;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.DeleteAccountFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mLogoutAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.DeleteAccountFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->dismissDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/account/DeleteAccountFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.DeleteAccountFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mStopped:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.DeleteAccountFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->navigateHome()V

    return-void
.end method

.method static synthetic access$802(Lcom/mcdonalds/app/account/DeleteAccountFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/DeleteAccountFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.DeleteAccountFragment"

    const-string v2, "access$802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mGoHome:Z

    return p1
.end method

.method private allowActivityExit(Z)V
    .locals 5
    .param p1, "canExit"    # Z

    .prologue
    const-string v1, "allowActivityExit"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/account/DeleteAccountActivity;

    .line 166
    .local v0, "activity":Lcom/mcdonalds/app/account/DeleteAccountActivity;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/account/DeleteAccountActivity;->setCanExitActivity(Z)V

    .line 167
    return-void
.end method

.method private createDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v4, "createDialog"

    invoke-static {p0, v4, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 137
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 139
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 140
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04006d

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 142
    .local v3, "view":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDialog:Landroid/app/AlertDialog;

    .line 145
    iget-object v4, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 147
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private deleteAccount()Landroid/content/DialogInterface$OnClickListener;
    .locals 2

    .prologue
    const-string v0, "deleteAccount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v0, Lcom/mcdonalds/app/account/DeleteAccountFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment$1;-><init>(Lcom/mcdonalds/app/account/DeleteAccountFragment;)V

    return-object v0
.end method

.method private dismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "dismissDialog"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iput-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDialog:Landroid/app/AlertDialog;

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 158
    iput-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDialog:Landroid/app/AlertDialog;

    throw v0
.end method

.method private navigateHome()V
    .locals 3

    .prologue
    const-string v1, "navigateHome"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/app/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    const-string v1, "fragment"

    const-string v2, "dashboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->startActivity(Landroid/content/Intent;)V

    .line 179
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const v0, 0x7f09085d

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mDeleteCalled:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0901c5

    .line 106
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    .line 107
    invoke-direct {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->deleteAccount()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090145

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v2, 0x7f0400ae

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f110299

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    .local v0, "delete":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const v3, 0x7f09079d

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(I)V

    .line 64
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->dismissDialog()V

    .line 71
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onOptionsItemSelected"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return v3
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 84
    iput-boolean v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mStopped:Z

    .line 86
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mGoHome:Z

    if-eqz v0, :cond_0

    .line 88
    iput-boolean v1, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mGoHome:Z

    .line 89
    invoke-direct {p0}, Lcom/mcdonalds/app/account/DeleteAccountFragment;->navigateHome()V

    .line 91
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/account/DeleteAccountFragment;->mStopped:Z

    .line 77
    return-void
.end method
