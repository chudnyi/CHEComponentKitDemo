/**
 * This file is generated using the remodel generation script.
 * The name of the input file is DMStory.value
 */

#if  ! __has_feature(objc_arc)
#error This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "DMStory.h"

@implementation DMStory

- (instancetype)initWithId:(NSString *)id streamId:(NSString *)streamId timestamp:(NSDate *)timestamp title:(NSString *)title content:(NSString *)content author:(NSString *)author url:(NSURL *)url published:(NSDate *)published updated:(NSDate *)updated likes:(NSUInteger)likes
{
  if ((self = [super init])) {
    _id = [id copy];
    _streamId = [streamId copy];
    _timestamp = [timestamp copy];
    _title = [title copy];
    _content = [content copy];
    _author = [author copy];
    _url = [url copy];
    _published = [published copy];
    _updated = [updated copy];
    _likes = likes;
  }

  return self;
}

- (id)copyWithZone:(NSZone *)zone
{
  return self;
}

- (NSString *)description
{
  return [NSString stringWithFormat:@"%@ - \n\t id: %@; \n\t streamId: %@; \n\t timestamp: %@; \n\t title: %@; \n\t content: %@; \n\t author: %@; \n\t url: %@; \n\t published: %@; \n\t updated: %@; \n\t likes: %tu; \n", [super description], _id, _streamId, _timestamp, _title, _content, _author, _url, _published, _updated, _likes];
}

- (NSUInteger)hash
{
  NSUInteger subhashes[] = {[_id hash], [_streamId hash], [_timestamp hash], [_title hash], [_content hash], [_author hash], [_url hash], [_published hash], [_updated hash], _likes};
  NSUInteger result = subhashes[0];
  for (int ii = 1; ii < 10; ++ii) {
    unsigned long long base = (((unsigned long long)result) << 32 | subhashes[ii]);
    base = (~base) + (base << 18);
    base ^= (base >> 31);
    base *=  21;
    base ^= (base >> 11);
    base += (base << 6);
    base ^= (base >> 22);
    result = base;
  }
  return result;
}

- (BOOL)isEqual:(DMStory *)object
{
  if (self == object) {
    return YES;
  } else if (self == nil || object == nil || ![object isKindOfClass:[self class]]) {
    return NO;
  }
  return
    _likes == object->_likes &&
    (_id == object->_id ? YES : [_id isEqual:object->_id]) &&
    (_streamId == object->_streamId ? YES : [_streamId isEqual:object->_streamId]) &&
    (_timestamp == object->_timestamp ? YES : [_timestamp isEqual:object->_timestamp]) &&
    (_title == object->_title ? YES : [_title isEqual:object->_title]) &&
    (_content == object->_content ? YES : [_content isEqual:object->_content]) &&
    (_author == object->_author ? YES : [_author isEqual:object->_author]) &&
    (_url == object->_url ? YES : [_url isEqual:object->_url]) &&
    (_published == object->_published ? YES : [_published isEqual:object->_published]) &&
    (_updated == object->_updated ? YES : [_updated isEqual:object->_updated]);
}

@end

