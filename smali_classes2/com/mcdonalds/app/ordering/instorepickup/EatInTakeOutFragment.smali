.class public Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;
.super Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
.source "EatInTakeOutFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const v0, 0x7f0907af

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 17
    const v1, 0x7f0400b6

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 19
    .local v0, "view":Landroid/view/View;
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;->mShouldLaunchQRCodeScanner:Z

    .line 20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;->mMainViewVisible:Z

    .line 22
    const v1, 0x7f1100da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;->mMainView:Landroid/view/View;

    .line 23
    const v1, 0x7f1102a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;->mEatInButton:Landroid/view/View;

    .line 24
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;->mEatInButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const v1, 0x7f1102a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;->mTakeOutButton:Landroid/view/View;

    .line 27
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;->mTakeOutButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v1, 0x7f1100dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;->mTableServiceButton:Landroid/view/View;

    .line 30
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/instorepickup/EatInTakeOutFragment;->mTableServiceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-object v0
.end method

.method public updateTakeOutButton(Landroid/view/View;)V
    .locals 3
    .param p1, "takeOutButton"    # Landroid/view/View;

    .prologue
    const-string v0, "updateTakeOutButton"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method
