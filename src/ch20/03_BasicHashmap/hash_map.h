#ifndef HASH_MAP_H
#define HASH_MAP_H

#include <cstddef>
#include <functional>
#include <list>
#include <string>
#include <vector>

namespace ProCpp {

  // A default hash object
  template <typename T>
  class hash {
  public:
    size_t operator()(const T& key) const;
  };

  // A hash specialization for strings
  template <>
  class hash<std::string> {
  public:
    size_t operator()(const std::string& key) const;
  };

  template <typename Key, typename T, typename Compare = std::equal_to<Key>, typename Hash = hash<Key>>
  class hash_map {
  public:
    using key_type = Key;
    using mapped_type = T;
    using value_type = std::pair<const Key, T>;

    // Virtual destructor
    virtual ~hash_map();

    // Throws invalid_argument if the number of buckets is illegal.
    explicit hash_map(const Compare& comp = Compare(), size_t numBuckets = 101, const Hash& hash = Hash());

    // Copy constructor
    hash_map(const hash_map<Key, T, Compare, Hash>& src);
    // Move constructor
    hash_map(hash_map<Key, T, Compare, Hash>&& src) noexcept;

    // Assignment operator
    hash_map<Key, T, Compare, Hash>& operator=(const hash_map<Key, T, Compare, Hash>& rhs);
    // Move assignment operator
    hash_map<Key, T, Compare, Hash>& operator=(hash_map<Key, T, Compare, Hash>&& rhs) noexcept;

    // Inserts the key/value pair x.
    void insert(const value_type& x);

    // Removes the element with key k, if it exists.
    void erase(const key_type& k);

    // Find returns a pointer to the element with key k.
    // Returns nullptr if no element with that key exists.
    value_type* find(const key_type& k);
    const value_type* find(const key_type& k) const;

    // operator[] finds the element with key k or inserts an
    // element with that key if none exists yet. Returns a reference to
    // the value corresponding to that key.
    T& operator[](const key_type& k);

  private:
    using ListType = std::list<value_type>;

    typename ListType::iterator findElement(const key_type& k, size_t& bucket);

    void CopyFrom(const hash_map<Key, T, Compare, Hash>& src);

    std::vector<ListType> mBuckets;
    size_t mSize;
    Compare mComp;
    Hash mHash;
  };
}

namespace ProCpp {

  // Calculate a hash by treating the key as a sequence
  // of bytes and summing the ASCII values of the bytes.
  template <typename T>
  size_t hash<T>::operator()(const T& key) const {
    size_t bytes = sizeof(key);
    size_t res = 0;
    for (size_t i = 0; i < bytes; ++i) {
      unsigned char b = *((unsigned char*)&key + i);
      res += b;
    }
    return res;
  }

  // Calculate a hash by summing the ASCII values of all characters.
  size_t hash<std::string>::operator()(const std::string& key) const {
    size_t sum = 0;
    for (size_t i = 0; i < key.size(); ++i) {
      sum += (unsigned char)key[i];
    }
    return sum;
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  hash_map<Key, T, Compare, Hash>::~hash_map() {}

  // Resize mBuckets with the number of buckets.
  template <typename Key, typename T, typename Compare, typename Hash>
  hash_map<Key, T, Compare, Hash>::hash_map(const Compare& comp, size_t numBuckets, const Hash& hash)
      : mSize(0), mComp(comp), mHash(hash) {
    if (numBuckets == 0) {
      throw std::invalid_argument("Number of buckets must be positive");
    }
    mBuckets.resize(numBuckets);
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  void hash_map<Key, T, Compare, Hash>::CopyFrom(const hash_map<Key, T, Compare, Hash>& src) {
    mComp = src.mComp;
    mHash = src.mHash;
    mBuckets.resize(src.mBuckets.size());

    for (auto& bucket : src.mBuckets) {
      for (auto& element : bucket) {
        insert(element);
      }
    }
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  hash_map<Key, T, Compare, Hash>::hash_map(const hash_map<Key, T, Compare, Hash>& src) {
    CopyFrom(src);
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  hash_map<Key, T, Compare, Hash>::hash_map(hash_map<Key, T, Compare, Hash>&& src) noexcept {
    // Just move each data member.
    mHash = std::move(src.mHash);
    mComp = std::move(src.mComp);
    mSize = std::move(src.mSize);
    mBuckets = std::move(src.mBuckets);
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  hash_map<Key, T, Compare, Hash>& hash_map<Key, T, Compare, Hash>::operator=(
      const hash_map<Key, T, Compare, Hash>& rhs) {
    if (&rhs == this) {
      return *this;
    }

    // Clear current data.
    mBuckets.clear();
    mSize = 0;

    // Copy members.
    CopyFrom(rhs);

    return *this;
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  hash_map<Key, T, Compare, Hash>& hash_map<Key, T, Compare, Hash>::operator=(
      hash_map<Key, T, Compare, Hash>&& rhs) noexcept {
    // Just move each data member.
    mHash = std::move(rhs.mHash);
    mComp = std::move(rhs.mComp);
    mSize = std::move(rhs.mSize);
    mBuckets = std::move(rhs.mBuckets);

    return *this;
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  typename hash_map<Key, T, Compare, Hash>::ListType::iterator hash_map<Key, T, Compare, Hash>::findElement(
      const key_type& k, size_t& bucket) {
    // Hash the key to get the bucket.
    bucket = mHash(k) % mBuckets.size();

    // Look for the key in the bucket.
    for (auto it = std::begin(mBuckets[bucket]); it != std::end(mBuckets[bucket]); ++it) {
      if (mComp(it->first, k)) {
        return it;
      }
    }
    return std::end(mBuckets[bucket]);
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  typename hash_map<Key, T, Compare, Hash>::value_type* hash_map<Key, T, Compare, Hash>::find(
      const key_type& k) {
    size_t bucket;
    // Use the findElement() helper.
    auto it = findElement(k, bucket);
    if (it == std::end(mBuckets[bucket])) {
      // Element not found -- return nullptr.
      return nullptr;
    }
    // Element found -- return a pointer to it.
    return &(*it);
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  const typename hash_map<Key, T, Compare, Hash>::value_type* hash_map<Key, T, Compare, Hash>::find(
      const key_type& k) const {
    return const_cast<hash_map<Key, T, Compare, Hash>*>(this)->find(k);
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  T& hash_map<Key, T, Compare, Hash>::operator[](const key_type& k) {
    // Try to find the element. If it doesn't exist, add a new element.
    value_type* found = find(k);
    if (found == nullptr) {
      insert(std::make_pair(k, T()));
      found = find(k);
    }
    return found->second;
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  void hash_map<Key, T, Compare, Hash>::insert(const value_type& x) {
    size_t bucket;

    // Try to find the element.
    auto it = findElement(x.first, bucket);

    if (it != std::end(mBuckets[bucket])) {
      // The element already exists.
      return;
    } else {
      // We didn't find the element, so insert a new one.
      mSize++;
      mBuckets[bucket].push_back(x);
    }
  }

  template <typename Key, typename T, typename Compare, typename Hash>
  void hash_map<Key, T, Compare, Hash>::erase(const key_type& k) {
    size_t bucket;

    // First, try to find the element.
    auto it = findElement(k, bucket);

    if (it != std::end(mBuckets[bucket])) {
      // The element exists -- erase it.
      mBuckets[bucket].erase(it);
      mSize--;
    }
  }
}

#endif /* HASH_MAP_H */
