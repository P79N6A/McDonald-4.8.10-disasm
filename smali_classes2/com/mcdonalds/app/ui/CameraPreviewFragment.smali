.class public Lcom/mcdonalds/app/ui/CameraPreviewFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "CameraPreviewFragment.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mIsPreviewing:Z

.field private mIsSurfaceCreated:Z

.field private mSurface:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method private getDisplayOrientation()I
    .locals 7

    .prologue
    const-string v5, "getDisplayOrientation"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 142
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 143
    .local v3, "manager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 144
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 145
    .local v2, "displayRotation":I
    const/4 v0, 0x0

    .line 146
    .local v0, "degrees":I
    packed-switch v2, :pswitch_data_0

    .line 160
    rem-int/lit8 v5, v2, 0x5a

    if-nez v5, :cond_0

    .line 161
    add-int/lit16 v5, v2, 0x168

    rem-int/lit16 v0, v5, 0x168

    .line 164
    :cond_0
    :goto_0
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 165
    .local v4, "selectedCameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v5, 0x0

    invoke-static {v5, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 166
    iget v5, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v5, v5, 0x168

    sub-int/2addr v5, v0

    rem-int/lit16 v5, v5, 0x168

    return v5

    .line 148
    .end local v4    # "selectedCameraInfo":Landroid/hardware/Camera$CameraInfo;
    :pswitch_0
    const/4 v0, 0x0

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    const/16 v0, 0x5a

    .line 152
    goto :goto_0

    .line 154
    :pswitch_2
    const/16 v0, 0xb4

    .line 155
    goto :goto_0

    .line 157
    :pswitch_3
    const/16 v0, 0x10e

    .line 158
    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startPreview(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x1

    const-string v3, "startPreview"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-boolean v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mIsSurfaceCreated:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mIsPreviewing:Z

    if-eqz v3, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_2

    .line 102
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 106
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    const-string v3, "continuous-picture"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 108
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->getDisplayOrientation()I

    move-result v0

    .line 109
    .local v0, "displayOrientation":I
    iget-object v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 110
    iget-object v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 111
    iget-object v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 112
    iget-object v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mIsPreviewing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v0    # "displayOrientation":I
    .end local v2    # "params":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->LOG_TAG:Ljava/lang/String;

    const-string v4, "start preview"

    invoke-static {v3, v4, v1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const-string v1, "stopPreview"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mIsPreviewing:Z

    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mIsPreviewing:Z

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "stop preview"

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    const v1, 0x7f04008e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f11025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mSurface:Landroid/view/SurfaceView;

    .line 39
    iget-object v1, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 41
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 60
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->stopPreview()V

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 65
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const-string v0, "onPreviewFrame"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->startPreview(Landroid/view/SurfaceHolder;)V

    .line 54
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 47
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->stopPreview()V

    .line 48
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const-string v0, "surfaceChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->stopPreview()V

    .line 85
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->startPreview(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x1

    const-string v0, "surfaceCreated"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-boolean v3, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mIsSurfaceCreated:Z

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->startPreview(Landroid/view/SurfaceHolder;)V

    .line 72
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    const-string v0, "surfaceDestroyed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-boolean v2, p0, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->mIsSurfaceCreated:Z

    .line 91
    return-void
.end method
