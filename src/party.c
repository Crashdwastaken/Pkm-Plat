#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02073C74.h"
#include "struct_defs/struct_party.h"

#include "heap.h"
#include "unk_020244AC.h"
#include "unk_02073C2C.h"
#include "party.h"

#define PARTY_ASSERT_SLOT(party, slot) {        \
    GF_ASSERT(slot >= 0);                       \
    GF_ASSERT(slot < (party)->currentCount);    \
    GF_ASSERT(slot < (party)->capacity);        \
}

int Party_sizeof (void)
{
    return sizeof(Party);
}

Party * sub_02079FF4 (u32 param0)
{
    Party * v0;

    v0 = AllocFromHeap(param0, sizeof(Party));
    sub_0207A008(v0);

    return v0;
}

void sub_0207A008 (Party * param0)
{
    Party_InitWithCapacity(param0, 6);
}

void Party_InitWithCapacity (Party * party, int capacity)
{
    int i;

    GF_ASSERT(capacity <= 6);
    memset(party, 0, sizeof(Party));

    party->currentCount = 0;
    party->capacity = capacity;

    for (i = 0; i < 6; i++) {
        sub_02073C2C(&party->pokemon[i]);
    }
}

BOOL Party_AddPokemon (Party * party, UnkStruct_02073C74 * pokemon)
{
    if (party->currentCount >= party->capacity) {
        return FALSE;
    }

    party->pokemon[party->currentCount] = *pokemon;
    party->currentCount++;

    return TRUE;
}

BOOL Party_RemovePokemonBySlotIndex (Party * party, int slot)
{
    int i;

    PARTY_ASSERT_SLOT(party, slot);
    GF_ASSERT(party->currentCount > 0);

    for (i = slot; i < party->currentCount - 1; i++) {
        party->pokemon[i] = party->pokemon[i + 1];
    }

    sub_02073C2C(&party->pokemon[i]);
    party->currentCount--;

    return TRUE;
}

int Party_GetCapacity (const Party * party)
{
    return party->capacity;
}

int Party_GetCurrentCount (const Party * party)
{
    return party->currentCount;
}

UnkStruct_02073C74 * Party_GetPokemonBySlotIndex (const Party * party, int slot)
{
    PARTY_ASSERT_SLOT(party, slot);
    return (UnkStruct_02073C74 *)&party->pokemon[slot];
}

void sub_0207A128 (Party * party, int slot, UnkStruct_02073C74 * param2)
{
    int v0;

    PARTY_ASSERT_SLOT(party, slot);

    v0 = sub_02074470(&(party->pokemon[slot]), 172, NULL) - sub_02074470(param2, 172, NULL);
    party->pokemon[slot] = *param2;
    party->currentCount += v0;
}

BOOL Party_SwapSlots (Party * party, int slotA, int slotB)
{
    struct UnkStruct_02073C74_t * tempPokemon;

    PARTY_ASSERT_SLOT(party, slotA);
    PARTY_ASSERT_SLOT(party, slotB);

    tempPokemon = AllocFromHeap(0, sizeof(struct UnkStruct_02073C74_t));
    *tempPokemon = party->pokemon[slotA];

    party->pokemon[slotA] = party->pokemon[slotB];
    party->pokemon[slotB] = *tempPokemon;

    FreeToHeap(tempPokemon);

    return FALSE;
}

void Party_cpy (const Party * src, Party * dest)
{
    *dest = *src;
}

BOOL Party_HasSpecies (const Party * party, int species)
{
    int i;

    for (i = 0; i < party->currentCount; i++) {
        if (sub_02074470((UnkStruct_02073C74 *)&party->pokemon[i], 5, NULL) == species) {
            break;
        }
    }

    return i != party->currentCount;
}

Party * GetPartyFromSavedata (UnkStruct_021C0794 * param0)
{
    Party * v0;

    v0 = (Party *)sub_020245BC(param0, 2);
    return v0;
}
