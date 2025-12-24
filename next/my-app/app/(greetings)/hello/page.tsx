"use client"; // 페이지를 클라이언트 컴포넌트로 전환할 수 없을 때 해결책 (하위의 모든 컴포넌트는 자동으로 클라이언트에서 렌더링 되는 것으로 간주)

import type { Route } from "next";
import { usePathname, useRouter, useSearchParams } from "next/navigation";
import { Suspense } from "react";
import SayHello from "./SayHello";

export default function HelloPage() {
  const pathname = usePathname();
  // const p = useParams();
  // console.log('🚀 ~ p:', p);

  return (
    <>
      <h1>Hello Page: {pathname}</h1>
      <div>
        <Suspense fallback={<h1>...</h1>}>
          <SayHello name={"Next"} />
          <SearchParamId />
        </Suspense>
      </div>
    </>
  );
}

function SearchParamId() {
  const pathname = usePathname();
  const searchParams = useSearchParams();
  const params = new URLSearchParams(searchParams.toString());

  const id = searchParams.get("id");
  // const name = searchParams.get('name');

  const router = useRouter();

  const make200 = () => {
    params.set("id", `200`);
    router.push(`${pathname}?${params.toString()}` as Route);
    // router.push('/');
  };

  return <button onClick={make200}>ID: {id}</button>;
}
