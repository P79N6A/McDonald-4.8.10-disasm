.class public Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SlideDateTimeDialogFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/dateTime/DateFragment$DateChangedListener;
.implements Lcom/mcdonalds/app/ui/dateTime/TimeFragment$TimeChangedListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static mListener:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeListener;


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mButtonHorizontalDivider:Landroid/view/View;

.field private mButtonVerticalDivider:Landroid/view/View;

.field private mCalendar:Ljava/util/Calendar;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDateFlags:I

.field private mIndicatorColor:I

.field private mInitialDate:Ljava/util/Date;

.field private mIs24HourTime:Z

.field private mIsClientSpecified24HourTime:Z

.field private mMaxDate:Ljava/util/Date;

.field private mMinDate:Ljava/util/Date;

.field private mOkButton:Landroid/widget/Button;

.field private mTheme:I

.field private mViewPager:Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;

.field private mViewPagerAdapter:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 44
    const v0, 0x80012

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mDateFlags:I

    .line 52
    return-void
.end method

.method static synthetic access$000()Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeListener;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ui.dateTime.SlideDateTimeDialogFragment"

    const-string v1, "access$000"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mListener:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Calendar;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.SlideDateTimeDialogFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.SlideDateTimeDialogFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mTheme:I

    return v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Date;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.SlideDateTimeDialogFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mMinDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Date;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.SlideDateTimeDialogFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mMaxDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.SlideDateTimeDialogFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mIsClientSpecified24HourTime:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.SlideDateTimeDialogFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mIs24HourTime:Z

    return v0
.end method

.method private customizeViews()V
    .locals 4

    .prologue
    const v3, 0x7f0e0031

    const-string v1, "customizeViews"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mTheme:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 184
    .local v0, "lineColor":I
    :goto_0
    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mTheme:I

    packed-switch v1, :pswitch_data_0

    .line 193
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mButtonHorizontalDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 194
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mButtonVerticalDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 197
    :goto_1
    return-void

    .line 180
    .end local v0    # "lineColor":I
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 188
    .restart local v0    # "lineColor":I
    :pswitch_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mButtonHorizontalDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 189
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mButtonVerticalDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initButtons()V
    .locals 2

    .prologue
    const-string v0, "initButtons"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$1;-><init>(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$2;-><init>(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    return-void
.end method

.method private initViewPager()V
    .locals 2

    .prologue
    const-string v0, "initViewPager"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;-><init>(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;

    .line 202
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mViewPager:Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 203
    return-void
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "setupViews"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const v0, 0x7f110519

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mViewPager:Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;

    .line 170
    const v0, 0x7f11051a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mButtonHorizontalDivider:Landroid/view/View;

    .line 171
    const v0, 0x7f11051c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mButtonVerticalDivider:Landroid/view/View;

    .line 172
    const v0, 0x7f11051d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 173
    const v0, 0x7f11051b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mCancelButton:Landroid/widget/Button;

    .line 174
    return-void
.end method

.method private unpackBundle()V
    .locals 3

    .prologue
    const-string v1, "unpackBundle"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "initialDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mInitialDate:Ljava/util/Date;

    .line 159
    const-string v1, "minDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mMinDate:Ljava/util/Date;

    .line 160
    const-string v1, "maxDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mMaxDate:Ljava/util/Date;

    .line 161
    const-string v1, "isClientSpecified24HourTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mIsClientSpecified24HourTime:Z

    .line 162
    const-string v1, "is24HourTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mIs24HourTime:Z

    .line 163
    const-string v1, "theme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mTheme:I

    .line 164
    const-string v1, "indicatorColor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mIndicatorColor:I

    .line 165
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onActivityCreated"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "onActivityResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-string v0, "onAttach"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const-string v0, "onCancel"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 269
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mListener:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeListener;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener no longer exists in onCancel()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mListener:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeListener;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeListener;->onDateTimeCancel()V

    .line 276
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x1030075

    const/4 v3, 0x1

    const-string v0, "SlideDateTimeDialogFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "SlideDateTimeDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onCreate"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->setRetainInstance(Z)V

    .line 109
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->unpackBundle()V

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    .line 112
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mInitialDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 114
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mTheme:I

    packed-switch v0, :pswitch_data_0

    .line 123
    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->setStyle(II)V

    .line 125
    :goto_1
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SlideDateTimeDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    :pswitch_0
    const v0, 0x1030071

    invoke-virtual {p0, v3, v0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->setStyle(II)V

    goto :goto_1

    .line 120
    :pswitch_1
    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->setStyle(II)V

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "SlideDateTimeDialogFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "onCreateView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const v1, 0x7f040192

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->setupViews(Landroid/view/View;)V

    .line 133
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->customizeViews()V

    .line 134
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->initViewPager()V

    .line 135
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->initButtons()V

    .line 137
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "SlideDateTimeDialogFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDateChanged(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const-string v0, "onDateChanged"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 255
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "onDestroyView"

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 151
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 152
    return-void
.end method

.method public onDetach()V
    .locals 2

    const-string v0, "onDetach"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    return-void
.end method

.method public onTimeChanged(II)V
    .locals 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const-string v0, "onTimeChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 281
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 282
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onViewStateRestored"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const-string v0, "onViewStateRestored"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
