---
layout: coursenotes
title: Serialization, File I/O
---

This lecture is mostly prep for project 3.

* s
{:toc}

## File I/O in Java

So far, we have handled applications that only operate on data stored in [main memory](https://en.wikipedia.org/wiki/Random-access_memory) (RAM).
Data in RAM is super-fast to access compared to data stored on disk or on other storage devices.
Differences in data read and write times can be orders of magnitude slower in disk-based applications compared to memory-bound applications. 

In previous projects and courses, you've had some experience reading from and writing to files.
Most of the time we use language libraries for this interaction with files without thinking too much about it.
For example, Java provides the [`Scanner` API](https://docs.oracle.com/en/java/javase/22/docs/api/java.base/java/util/Scanner.html) for reading data from files.

You all used the `Scanner` API to implement your TUIs in a previous project and lab.
There were no files involved there, because the "source" of input was `System.in`, or the "standard input stream".

```java
Scanner scan = new Scanner(System.in);
```

If you wanted to read from a file instead, you would initialise the `Scanner` like so:

```java
// You need to wrap the scanner in a try-catch if you want to read a file
try (Scanner scan = new Scanner(new File("my text file.txt"))) {
  // do stuff with the file's contents
  // the same Scanner API applies: scan.nextLine(), scan.next(), etc.
} catch (FileNotFoundException e) {
  // handle the scenario where the file doesn't exist
}
```

Similarly, Java provides a [`FileWriter`](https://docs.oracle.com/en/java/javase/22/docs/api/java.base/java/io/FileWriter.html)  for writing to files:

```java
try (FileWriter writer = new FileWriter(new File("some text file.txt"))) {
  // write data to the file
  // API calls like writer.write("some text..."); 
} catch (IOException e) {
  // handle the exception 
}
```

## Random access files

Reading files with a `Scanner` is convenient, but comes with a couple of limitations.

**The `Scanner` is limited to reading *text*.** When you say something like `scanner.nextLine()` to get a line from the input source, or `scanner.next()` to get a "token" delimited by whitespace, you are assuming that the data you're reading from the input source is textual data. You can't use a Scanner to read things like raw binary data. 

**The `Scanner` cannot jump to arbitrary positions in the file.** You must read the file from start to finish, using methods like `next()` which gets you the "word" or `nextLine()` which gets you the next line. There is no moving backward, and there is no moving forward without reading the file along the way.

These are good limitations! Most of the time we *do* want to only read text from a file (words, ints, lines, spaces, etc.), so an interface that's on the same page as us is a good thing.

There are also performance reasons why it's a good assumption that you'll want to read data sequentially.

* Your storage device (hard disk) is divided into **sectors** or **blocks**. This is the smallest amount of data that will be read or written at one time by disk drive hardware. These are typically a few KB in size.
* Your file system keeps track of how files are stored on disk. For example, for each sector or block, it will keep track of whether it is "free" or not, and which file is using it if applicable. 
* **Seek**: Since data is read a block at a time, large pieces of data that cover sequential blocks tend to be faster to read. This is called _sequential access_. _Random access_ involves accessing data from all over the disk drive (or from anywhere in a file) instead of in sequential blocks (or instead of start-to-finish in a file). So far, most of the file processing you've done has likely been sequential access.
  - Speed differences between sequential vs. random access are becoming much smaller as SSDs and Flash storage devices become mainstream.
- [Since related data tends to be read and written together](https://en.wikipedia.org/wiki/Locality_of_reference), reading entire blocks at a time and reading them in order turns out to be pretty commonly useful.

## `RandomAccessFiles`

However, sometimes we need something a little less controlled.
That is, there are situations in which we need to read raw bytes from a file that cannot be interpreted as text (for example, if we are storing compressed data that needs to be decompressed according to some protocol).
And sometimes we need to be able to quickly access data from arbitrary locations in the file, without _reading up to_ that location (for example, consider how large database systems like MySQL or PostgreSQL store and access their data on disk).

The Java standard library provides the [`RandomAccessFile`](https://docs.oracle.com/en/java/javase/22/docs/api/java.base/java/io/RandomAccessFile.html) API to allow this.

Here are some key concepts in and methods from this API:

* The random access file keeps track of a "current position" in the file (called the file pointer offset). This is the form of an offset from the beginning of the file, in terms of number of bytes. So if your current offset is `256`, the next read or write will begin at byte `256`.
* You can use the `seek(long pos)` method to tell the file to move its pointer to the given offset (measured from the beginning of the file).
* You can use `readByte()` to read a single byte from the file (starting at wherever its offset currently is). Note that this action will move the file pointer offset by 1 byte.
* You can use `read(byte[] b, int off, int len)` to read `len` bytes, starting at `off` and place them into the array `b`. (I do wish this method would _return_ an array, instead of asking for an array into which it will populate data. But oh well.) This will move the file pointer offset by `len` bytes.
* Similarly, you can use `write`, `writeByte`, `writeBytes` to write to the random access file.

Notice that all of the operations above are in terms of _bytes_, instead of nice logical chunks of data that could be interpreted to mean, say, unicode characters.
Like we said above, sometimes this is useful depending on what you want to do.

But it's also a matter of necessity: if you're reading arbitrary amounts of data from a file starting at some arbitrary position, there's no guarantee that you're getting a logically meaningful chunk of data. So the `RandomAccessFile` API works in terms of bytes, and it's up to you to "decode" the bytes into something meaningful.

There are, however, some "convenience methods":

The `RandomAccessFile` also provides methods like `readDouble`, `readChar`, etc.
These are kind of doing what the `Scanner`'s `nextInt` does: they read the requisite number of bytes (e.g., 4 bytes for `int`, 8 bytes for `double`) and treat those bytes as the appropriate data type. 
It's up to you to ensure that, for example, the next 4 bytes actually contain a meaningful integer.

(In a `Scanner`, the program will crash if you call `nextInt` and there actually isn't an integer coming up. In a `RandomAccessFile`, it will simply read the next four bytes and interpret them as an int, whether or not that's "correct" or what you wanted. So tread carefully.)

## Serialization

This leads us into our next topic.

_Serialization_ is the conversion of an object (or some piece of data) to a byte stream. _Deserialization_ is the process of turning a byte stream back into the object (or the original piece of data).

They are sometimes called _marshalling_ and _unmarshalling_. 

There are many reasons why we might want to serialize data:

* To transmit over the wire.
* To enable interoperability between different systems. For example, you might want to "export" a Java object so that it can be "imported" into a Python program.
* To persist data so that it "survives" the termination of a program.

Of course, there exist multiple structured data formats for exporting data to files or sending data over the network, like JSON, XML, and YAML.
Those are certainly much more friendly and human-readable than writing out raw byte streams.

However, these exports tend to be much bigger, since those formats use plain text to represent the data, and include extraneous data (like colons `:`, braces `{ }`, brackets `[ ]`, whitespace `" "`, and plain text as opposed to raw bytes).
So data written out in formats like JSON tend to be more human-readable while still being structured enough to be parsed by programs, but they tend to have a larger memory footprint as well.

Hence, we sometimes opt to serialize our data into raw byte streams.

### An example

Suppose we are trying to serialize a `short` (an integer data type in Java that takes up two bytes of memory).

First recognise that the `short` is an _abstraction_. The computer doesn't know what an integer or a short is; all it knows is how to read bits and bytes. We (humans) decide that in certain contexts, certain sequences of bits and bytes mean certain human-sensible things (like integers, booleans, or characters).

So to serialise this short, our first task is to become "less abstract"---we're going from the abstract human-friendly representation (the number 31543) to a less abstract representation (a byte array).

We use the `ByteBuffer` class to help with this.

```java
// This is our number we want to serialise.
short shortNum = 31543;

// Create an empty ByteBuffer, with room for two bytes.
ByteBuffer bb = ByteBuffer.allocate(2);

// Put the short into the ByteBuffer and we can obtain the array of raw bytes.
bb.putShort(shortNum);
byte[] asArray = bb.array();
```

We can now use the `RandomAccessFile` API to write out this byte array to a file.

```java
// Assuming that myFile.dat exists.
RandomAccessFile randomAccessFile = new RandomAccessFile(new File("myFile.dat"), "rw");
randomAccessFile.write(asArray);
```

The entire `asArray` byte array has been written to the random access file.

Note that this moves the file's pointer offset forwards two bytes!
So any future reads will happen from that point onward.
If you wanted to `read` the two bytes back into memory, you would need to move the cursor back first.

In the code below, we read back the two bytes we just wrote.

```java
// Prepare the byte array into which you'll read data.
byte[] fromFile = new byte[2];

// Move the pointer back to where you want to start reading.
// In this case, the beginning of the file.
// If you forget to do this, your program will fail silently and subtly.
raf.seek(0);

// Read in fromFile.length bytes and place them in the array.
raf.read(fromFile); 

// Get the short back. We are in human-readable land again!
short num = ByteBuffer,wrap(fromFile).getShort(); 

System.out.println(num); // Prints 31543.
```

---
