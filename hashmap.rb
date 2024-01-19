class HashMap
    attr_reader :buckets, :load_factor

    def initialize(load_factor = 0.75)
        @buckets = Array.new(8, [])
        @load_factor = load_factor
        @size = 0
    end

    def hash(key)
        key.hash % buckets.length
    end

    def set(key, value)
        index = hash(key)
        bucket = buckets[index]

        bucket.each do |entry|
            if entry[0] == key
                entry[1] = value
                return
            end
        end

        bucket << [key, value]
        @size += 1
        resize_buckets if load_factor_exceeded?
    end

    def get(key)
        index = hash(key)
        bucket = buckets[index]

        bucket.each do |entry|
            return entry[1] if entry[0] == key
        end

        nil
    end

    def key?(key)
        index = hash(key)
        bucket = buckets[index]

        bucket.each do |entry|
            return true if entry[0] == key
        end

        false
    end

    def remove(key)
        index = hash(key)
        bucket = buckets[index]

        bucket.each_with_index do |entry, i|
            if entry[0] == key
                value = entry[1]
                bucket.delete_at(i)
                @size -= 1
                return value
            end
        end

        nil
    end

    def length
        @size
    end

    def clear
        @buckets = Array.new(8, [])
        @size = 0
    end

    def keys
        keys = []

        buckets.each do |bucket|
            bucket.each do |entry|
                keys << entry[0]
            end
        end

        keys
    end

    def values
        values = []

        buckets.each do |bucket|
            bucket.each do |entry|
                values << entry[1]
            end
        end

        values
    end

    def entries
        entries = []

        buckets.each do |bucket|
            bucket.each do |entry|
                entries << entry
            end
        end

        entries
    end

    private

    def load_factor_exceeded?
        @size > buckets.length * load_factor
    end

    def resize_buckets
        new_buckets = Array.new(buckets.length * 2, [])

        buckets.each do |bucket|
            bucket.each do |entry|
                index = entry[0].hash % new_buckets.length
                new_buckets[index] << entry
            end
        end

        @buckets = new_buckets
    end
end
