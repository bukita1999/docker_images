all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build            - build all images"
	@echo "   2. make pull             - pull all images"
	@echo "   3. make clean            - remove all images"
	@echo ""

build:
	@docker build --tag=osrf/ros2:$release_name-ros-core-$os_code_name			ros-core/.
	@docker build --tag=osrf/ros2:$release_name-ros-base-$os_code_name			ros-base/.
	@docker build --tag=osrf/ros2:$release_name-desktop-$os_code_name			desktop/.
	@docker build --tag=osrf/ros2:$release_name-ros1-bridge-$os_code_name			ros1-bridge/.

pull:
	@docker pull osrf/ros2:$release_name-ros-core-$os_code_name
	@docker pull osrf/ros2:$release_name-ros-base-$os_code_name
	@docker pull osrf/ros2:$release_name-desktop-$os_code_name
	@docker pull osrf/ros2:$release_name-ros1-bridge-$os_code_name

clean:
	@docker rmi -f osrf/ros2:$release_name-ros-core-$os_code_name
	@docker rmi -f osrf/ros2:$release_name-ros-base-$os_code_name
	@docker rmi -f osrf/ros2:$release_name-desktop-$os_code_name
	@docker rmi -f osrf/ros2:$release_name-ros1-bridge-$os_code_name
