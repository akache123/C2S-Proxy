CXX = g++
#CXXFLAGS = -Wall -Wextra
LDFLAGS = -pthread -lssl -lcrypto
TARGETDIR = bin/
SRCDIR = src/

all: myproxy

myproxy: $(TARGETDIR)myproxy.o
	$(CXX) $(CXXFLAGS) -o $(TARGETDIR)myproxy $(TARGETDIR)myproxy.o $(LDFLAGS)

$(TARGETDIR)myproxy.o: $(SRCDIR)myproxy.cpp
	mkdir -p $(TARGETDIR)
	$(CXX) $(CXXFLAGS) -c -o $(TARGETDIR)myproxy.o $(SRCDIR)myproxy.cpp

clean:
	rm -f $(TARGETDIR)myproxy $(TARGETDIR)*.o

