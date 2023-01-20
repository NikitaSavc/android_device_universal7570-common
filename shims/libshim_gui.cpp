#include <gui/DebugEGLImageTracker.h>
#include <gui/DisplayEventReceiver.h>
#include <gui/IProducerListener.h>
#include <gui/Surface.h>

using android::DisplayEventReceiver;
using android::ISurfaceComposer;
using android::BnProducerListener;
using android::Surface;
using android::ui::Dataspace;
using android::GraphicBuffer;
using android::sp;
using android::status_t;

extern "C" DebugEGLImageTracker* _ZN20DebugEGLImageTracker11getInstanceEv(){
    return DebugEGLImageTracker::getInstance();
}

extern "C" DisplayEventReceiver* _ZN7android20DisplayEventReceiverC1ENS_16ISurfaceComposer11VsyncSourceENS1_13ConfigChangedE(
        ISurfaceComposer::VsyncSource vsyncSource,
        ISurfaceComposer::ConfigChanged configChanged) {
    return new DisplayEventReceiver(vsyncSource,configChanged);
}

extern "C" void _ZN7android18BnProducerListener18onBuffersDiscardedERKNSt3__16vectorIiNS1_9allocatorIiEEEE(
	const std::vector<int32_t>& slots){
    //(new BnProducerListener())::onBuffersDiscarded(slots);
}

extern "C" status_t _ZN7android7Surface33attachAndQueueBufferWithDataspaceEPS0_NS_2spINS_13GraphicBufferEEENS_8hardware8graphics6common4V1_29DataspaceE(
	Surface* surface, sp<GraphicBuffer> buffer, Dataspace dataspace){
    return Surface::attachAndQueueBufferWithDataspace(surface, buffer, dataspace);
}

