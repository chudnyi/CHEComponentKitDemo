/**
 * This file is generated using the remodel generation script.
 * The name of the input file is DMStory.value
 */

#import <Foundation/Foundation.h>

/**
 * Generated with: https://github.com/facebook/remodel
 */
@interface DMStory : NSObject <NSCopying>

@property (nonatomic, readonly, copy) NSString *id;
@property (nonatomic, readonly, copy) NSString *streamId;
@property (nonatomic, readonly, copy) NSDate *timestamp;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *content;
@property (nonatomic, readonly, copy) NSString *author;
@property (nonatomic, readonly, copy) NSURL *url;
@property (nonatomic, readonly, copy) NSDate *published;
@property (nonatomic, readonly, copy) NSDate *updated;
@property (nonatomic, readonly) NSUInteger likes;

- (instancetype)initWithId:(NSString *)id streamId:(NSString *)streamId timestamp:(NSDate *)timestamp title:(NSString *)title content:(NSString *)content author:(NSString *)author url:(NSURL *)url published:(NSDate *)published updated:(NSDate *)updated likes:(NSUInteger)likes;

@end

