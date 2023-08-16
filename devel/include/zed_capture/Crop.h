// Generated by gencpp from file zed_capture/Crop.msg
// DO NOT EDIT!


#ifndef ZED_CAPTURE_MESSAGE_CROP_H
#define ZED_CAPTURE_MESSAGE_CROP_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace zed_capture
{
template <class ContainerAllocator>
struct Crop_
{
  typedef Crop_<ContainerAllocator> Type;

  Crop_()
    : x(0)
    , y(0)  {
    }
  Crop_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)  {
  (void)_alloc;
    }



   typedef uint16_t _x_type;
  _x_type x;

   typedef uint16_t _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::zed_capture::Crop_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zed_capture::Crop_<ContainerAllocator> const> ConstPtr;

}; // struct Crop_

typedef ::zed_capture::Crop_<std::allocator<void> > Crop;

typedef boost::shared_ptr< ::zed_capture::Crop > CropPtr;
typedef boost::shared_ptr< ::zed_capture::Crop const> CropConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zed_capture::Crop_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zed_capture::Crop_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::zed_capture::Crop_<ContainerAllocator1> & lhs, const ::zed_capture::Crop_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::zed_capture::Crop_<ContainerAllocator1> & lhs, const ::zed_capture::Crop_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace zed_capture

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::zed_capture::Crop_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zed_capture::Crop_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zed_capture::Crop_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zed_capture::Crop_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zed_capture::Crop_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zed_capture::Crop_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zed_capture::Crop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2b80853b9dd76da1c3efb4dbc2426fe9";
  }

  static const char* value(const ::zed_capture::Crop_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2b80853b9dd76da1ULL;
  static const uint64_t static_value2 = 0xc3efb4dbc2426fe9ULL;
};

template<class ContainerAllocator>
struct DataType< ::zed_capture::Crop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zed_capture/Crop";
  }

  static const char* value(const ::zed_capture::Crop_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zed_capture::Crop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 x\n"
"uint16 y\n"
;
  }

  static const char* value(const ::zed_capture::Crop_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zed_capture::Crop_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Crop_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zed_capture::Crop_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zed_capture::Crop_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZED_CAPTURE_MESSAGE_CROP_H
