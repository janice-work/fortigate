variable "region" {
  default = "ap-east-1"
}

// Availability zones for the region
variable "az1" {
  default = "ap-east-1a"
}

variable "az2" {
  default = "ap-east-1b"
}

// Ask Customer
variable "vpccidr" {
  default = "10.1.0.0/16"
}

variable "publiccidraz1" {
  default = "10.1.0.0/24"
}

variable "privatecidraz1" {
  default = "10.1.1.0/24"
}

variable "publiccidraz2" {
  default = "10.1.2.0/24"
}

variable "privatecidraz2" {
  default = "10.1.3.0/24"
}

# // VPC for Customer VPC
# variable "csvpccidr" {
#   default = "20.1.0.0/16"
# }

# variable "cspubliccidraz1" {
#   default = "20.1.0.0/24"
# }

# variable "csprivatecidraz1" {
#   default = "20.1.1.0/24"
# }


# variable "cspubliccidraz2" {
#   default = "20.1.2.0/24"
# }

# variable "csprivatecidraz2" {
#   default = "20.1.3.0/24"
# }



// License Type to create FortiGate-VM
// Provide the license type for FortiGate-VM Instances, either byol or payg.
variable "license_type" {
  default = "byol"
}

// BYOL License format to create FortiGate-VM
// Provide the license type for FortiGate-VM Instances, either token or file.
variable "license_format" {
  default = "token"
}

// instance architect
// Either arm or x86
variable "arch" {
  default = "x86"
}

// instance type needs to match the architect
// c5.xlarge is x86_64
// c6g.xlarge is arm
// For detail, refer to https://aws.amazon.com/ec2/instance-types/
// Ask Customer, use what instance
variable "size" {
  default = "c6i.xlarge"
}

// AMIs for FGTVM-7.4.4
variable "fgtami" {
  type = map(any)
  default = {
    us-east-1 = {
      arm = {
        payg = "ami-099917089a0ed6893"
        byol = "ami-051109a33edc50a75"
      },
      x86 = {
        payg = "ami-0c21d3a25956ccc59"
        byol = "ami-0e4847279c5283aa2"
      }
    },
    us-east-2 = {
      arm = {
        payg = "ami-0eacb35bad77c8c80"
        byol = "ami-095ed8e3a5f1ed3b5"
      },
      x86 = {
        payg = "ami-0c77fe0a542970323"
        byol = "ami-0701eb9a6d43b66dd"
      }
    },
    us-west-1 = {
      arm = {
        payg = "ami-0935500af26577861"
        byol = "ami-02db608924c9194f9"
      },
      x86 = {
        payg = "ami-059fd8195c9836f52"
        byol = "ami-089fe1ce20c057ba4"
      }
    },
    us-west-2 = {
      arm = {
        payg = "ami-0f0b022d3bc440b76"
        byol = "ami-0af4177d4cf113639"
      },
      x86 = {
        payg = "ami-0d52cdfc7d24f3794"
        byol = "ami-043f32731c051ef30"
      }
    },
    af-south-1 = {
      arm = {
        payg = "ami-00dd2b9d7915e33c4"
        byol = "ami-021a7464e2ad1ed66"
      },
      x86 = {
        payg = "ami-047defcd4a934d3b3"
        byol = "ami-004471032ea59250a"
      }
    },
    ap-east-1 = {
      arm = {
        payg = "ami-06b62170a5fe02262"
        byol = "ami-0d7a06d425800c113"
      },
      x86 = {
        payg = "ami-0c1bf1b3476a26c5c"
        byol = "ami-077865546a21b9b96"
      }
    },
    ap-south-2 = {
      arm = {
        payg = "ami-07c1ff56d129e87eb"
        byol = "ami-0e95c6a644ac341d1"
      },
      x86 = {
        payg = "ami-0dc66789147993269"
        byol = "ami-0e000e5e14f809201"
      }
    },
    ap-southeast-3 = {
      arm = {
        payg = "ami-0e41ee0fd00c59e7b"
        byol = "ami-06b56ab6a9d531ce7"
      },
      x86 = {
        payg = "ami-0f2352ce7e1ccea40"
        byol = "ami-082b1066ebf456a11"
      }
    },
    ap-southeast-4 = {
      arm = {
        payg = "ami-0edf98f776c1ce5dc"
        byol = "ami-0d0cf7dcf555ede51"
      },
      x86 = {
        payg = "ami-0d6ed962c1f7d775d"
        byol = "ami-06892800639a5d6f7"
      }
    },
    ap-south-1 = {
      arm = {
        payg = "ami-0b63a866629bdbf3c"
        byol = "ami-0f11f0b1d16a69e39"
      },
      x86 = {
        payg = "ami-092d9533f0b77d5e9"
        byol = "ami-0fd5961d925548d98"
      }
    },
    ap-northeast-3 = {
      arm = {
        payg = "ami-0d8caaf0b80eb98a9"
        byol = "ami-096f57146543924e2"
      },
      x86 = {
        payg = "ami-0d50cdf3a6e01c4b5"
        byol = "ami-0b259db60fd5f061f"
      }
    },
    ap-northeast-2 = {
      arm = {
        payg = "ami-0c8f2a3b31e5ad77b"
        byol = "ami-009cb0f5d623c6326"
      },
      x86 = {
        payg = "ami-0e4f41010fbf053dd"
        byol = "ami-039554a1af48f8ee5"
      }
    },
    ap-southeast-1 = {
      arm = {
        payg = "ami-010c6763a6c1c5215"
        byol = "ami-07fdc65a1a571179a"
      },
      x86 = {
        payg = "ami-06601c701ec305bc8"
        byol = "ami-0eb8820bd46e0765a"
      }
    },
    ap-southeast-2 = {
      arm = {
        payg = "ami-050b61bf287c6881c"
        byol = "ami-04a9c6f43b3cb7d0a"
      },
      x86 = {
        payg = "ami-023cab61184d8d837"
        byol = "ami-0dbe1fa7d24a74263"
      }
    },
    ap-northeast-1 = {
      arm = {
        payg = "ami-0b87195e0f8ce9774"
        byol = "ami-0ffe00e1164b37144"
      },
      x86 = {
        payg = "ami-0a79767d3d775b189"
        byol = "ami-05906e2828255bade"
      }
    },
    ca-central-1 = {
      arm = {
        payg = "ami-0543259c4a5ea415a"
        byol = "ami-005af7ff39cf00576"
      },
      x86 = {
        payg = "ami-0c4392bca9d14bf81"
        byol = "ami-0c3163cc35c83c8ff"
      }
    },
    ca-west-1 = {
      arm = {
        payg = "ami-0de018bab6318e920"
        byol = "ami-0eb16cc0fac9174a8"
      },
      x86 = {
        payg = "ami-06b32d6da0912ced0"
        byol = "ami-06f2d6119e152ba4e"
      }
    },
    eu-central-1 = {
      arm = {
        payg = "ami-09d2b647e61683c03"
        byol = "ami-02fde47bd7b94a280"
      },
      x86 = {
        payg = "ami-02ccd74189e15dfce"
        byol = "ami-04e4ffecb22527420"
      }
    },
    eu-west-1 = {
      arm = {
        payg = "ami-03f69d2110667c3f0"
        byol = "ami-09d5652c5fdbb1c31"
      },
      x86 = {
        payg = "ami-0563f8aec4cffc829"
        byol = "ami-05ad9966a950de71b"
      }
    },
    eu-west-2 = {
      arm = {
        payg = "ami-042fafb308e5cc5ac"
        byol = "ami-0f74e8ba3b5bafa46"
      },
      x86 = {
        payg = "ami-0a0f51856105ec67b"
        byol = "ami-0dfefd514a7331cce"
      }
    },
    eu-south-1 = {
      arm = {
        payg = "ami-0c8390310e7d698c0"
        byol = "ami-0f85dd0f8550a7769"
      },
      x86 = {
        payg = "ami-0b5ae0cc0e7a81ba4"
        byol = "ami-0e92f5c29b121c2c8"
      }
    },
    eu-west-3 = {
      arm = {
        payg = "ami-017b9663055d4e356"
        byol = "ami-0f693e7d1bf908095"
      },
      x86 = {
        payg = "ami-060ac7708b4e620ba"
        byol = "ami-0be9af3b721f8c959"
      }
    },
    eu-south-2 = {
      arm = {
        payg = "ami-040905bbf716d1587"
        byol = "ami-01b81d365b334e298"
      },
      x86 = {
        payg = "ami-086f7eb74e98413e7"
        byol = "ami-05eff062612d6d191"
      }
    },
    eu-north-1 = {
      arm = {
        payg = "ami-01410d380c60129af"
        byol = "ami-0de89c6b16d8ba760"
      },
      x86 = {
        payg = "ami-0557c34578dc60f86"
        byol = "ami-0586c7ea6a8b2a5b5"
      }
    },
    eu-central-2 = {
      arm = {
        payg = "ami-0850a80279c074dad"
        byol = "ami-08a6af34d97a1d345"
      },
      x86 = {
        payg = "ami-0b0875806ae30e498"
        byol = "ami-053853a9c88f69298"
      }
    },
    me-south-1 = {
      arm = {
        payg = "ami-0e37183412a1f6032"
        byol = "ami-0dfa267484fd1ed56"
      },
      x86 = {
        payg = "ami-02dd70b1625dd692d"
        byol = "ami-0117fe58866dcdfef"
      }
    },
    me-central-1 = {
      arm = {
        payg = "ami-067909b8ab199ad23"
        byol = "ami-05c25bd2865a5270e"
      },
      x86 = {
        payg = "ami-0c60e9f4678aae751"
        byol = "ami-03f4a133efea58bdb"
      }
    },
    il-central-1 = {
      arm = {
        payg = "ami-094e9915ee940b8f2"
        byol = "ami-01042692389b3ce89"
      },
      x86 = {
        payg = "ami-01b8b7aaf9db62d30"
        byol = "ami-06a63ee02b6a9069e"
      }
    },
    sa-east-1 = {
      arm = {
        payg = "ami-0ef202b57598348e4"
        byol = "ami-0c642f033805183c3"
      },
      x86 = {
        payg = "ami-0d3b25ea5549dbff5"
        byol = "ami-03b2da92bd1e10472"
      }
    }
  }
}

//  Existing SSH Key on the AWS 
// Ask customer to provide RSA key for FortiGate VM
variable "keyname" {
  default = "recharge-hk"
}

//  Admin HTTPS access port
variable "adminsport" {
  default = "443"
}

variable "bootstrap-fgtvm" {
  // Change to your own path
  type    = string
  default = "fgtvm.conf"
}

//license files for the two fgts
variable "licenses" {
  // Change to your own byol license files
  type    = list(string)
  default = ["C623B1849A744316E8E4", "C623B1849A744316E8E4"]
}
