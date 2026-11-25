# sandbox_telemetry_parse — 2026-11-25 11:23:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2735733 lines=6061
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6046 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 6046} |
| `chromeGpuPssKb` | {'int': 6046} |
| `chromeOtherPssKb` | {'int': 6046} |
| `chromeProcesses` | {'int': 6046} |
| `chromeProfiles` | {'int': 6046} |
| `chromeRendererMaxPssKb` | {'int': 6046} |
| `chromeRendererPssKb` | {'int': 6046} |
| `chromeRenderers` | {'int': 6046} |
| `chromeTabs` | {'int': 6046} |
| `chromeTabsProbedProfiles` | {'int': 6046} |
| `chromeUtilityPssKb` | {'int': 6046} |
| `desktopPssKb` | {'int': 6046} |
| `hostPssKb` | {'int': 6046} |
| `kind` | {'str': 6046} |
| `memAvailableKb` | {'int': 6046} |
| `memTotalKb` | {'int': 6046} |
| `otherPssKb` | {'int': 6046} |
| `processes` | {'int': 6046} |
| `pssFallbackProcesses` | {'int': 6046} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
