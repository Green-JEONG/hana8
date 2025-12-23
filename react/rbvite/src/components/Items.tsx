import type { ItemType } from "@/hooks/SessionContext";
import { useState, useTransition, type ChangeEvent } from "react";

export default function items() {
  const {session } = 
  
  const [searchResult, setSearchResult] = useState<ItemType[]>([]);
    const [isSearching, startSearchTransition] = useTransition();
    const handleSearch = (e: ChangeEvent<HTMLInputElement>) => {
      startSearchTransition(async () => {
        await new Promise((resolve) => setTimeout(resolve, 1500));
        const str = e.target.value;
        setSearchStr(str);
        setSearchResult(session.cart.filter((item) => item.name.includes(str)));
      });
    };
    
  return (
    <>
    
    </>
  )
}
