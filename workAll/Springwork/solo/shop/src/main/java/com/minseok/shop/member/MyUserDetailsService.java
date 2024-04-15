package com.minseok.shop.member;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service
public class MyUserDetailsService implements UserDetailsService {
    private final MemberRepository memberRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        //DB에서 username을 가진 유저를 찾아와서
        //return new User(유저아이디, 비번, 권한) 해주세요
        Optional<Member> findUser = memberRepository.findByUsername(username);
        if (findUser.isEmpty()) {
            throw new UsernameNotFoundException("그런 아이디 없다");
        }

        String user = findUser.get().username;
        String password = findUser.get().password;
        List<GrantedAuthority> authorities = new ArrayList<>();
        if (user.equals("admin")) {
            authorities.add(new SimpleGrantedAuthority("admin"));
        } else {
            authorities.add(new SimpleGrantedAuthority("일반유저"));
        }
        var a = new CustomUser(user,password,authorities);
        a.displayName = findUser.get().displayName;

        return a;
    }
}
