# sandbox_telemetry_parse — 2026-11-20 18:17:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1830823 lines=4059
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4046 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4046} |
| `chromeGpuPssKb` | {'int': 4046} |
| `chromeOtherPssKb` | {'int': 4046} |
| `chromeProcesses` | {'int': 4046} |
| `chromeProfiles` | {'int': 4046} |
| `chromeRendererMaxPssKb` | {'int': 4046} |
| `chromeRendererPssKb` | {'int': 4046} |
| `chromeRenderers` | {'int': 4046} |
| `chromeTabs` | {'int': 4046} |
| `chromeTabsProbedProfiles` | {'int': 4046} |
| `chromeUtilityPssKb` | {'int': 4046} |
| `desktopPssKb` | {'int': 4046} |
| `hostPssKb` | {'int': 4046} |
| `kind` | {'str': 4046} |
| `memAvailableKb` | {'int': 4046} |
| `memTotalKb` | {'int': 4046} |
| `otherPssKb` | {'int': 4046} |
| `processes` | {'int': 4046} |
| `pssFallbackProcesses` | {'int': 4046} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
