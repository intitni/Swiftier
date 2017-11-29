//
//  SwiftierBlock.h
//  Swiftier
//
//  Created by Shangxin Guo on 29/11/2017.
//

#ifndef SwiftierBlock_h
#define SwiftierBlock_h

#define safeBlock(block, ...) block ? block(__VA_ARGS__) : nil
#define asyncQueueBlock(queue, block, ...) dispatch_async(queue, ^ \
{ \
safeBlock(block, __VA_ARGS__); \
})
#define mainQueueBlock(block, ...) asyncQueueBlock(dispatch_get_main_queue(), block, __VA_ARGS__);

#endif /* SwiftierBlock_h */
