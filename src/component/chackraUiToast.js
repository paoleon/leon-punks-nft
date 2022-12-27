import { useToast } from '@chakra-ui/react'

export function CustomToast({message,status}) {
    const toast = useToast();

    
    return (
        toast({
            title: 'An error occurred.',
            description: message,
            status: status,
            duration: 9000,
            isClosable: true,
          })
        )
  }

  


