# sandbox_telemetry_parse — 2026-11-19 17:47:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1378403 lines=3057
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3046 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3046} |
| `chromeGpuPssKb` | {'int': 3046} |
| `chromeOtherPssKb` | {'int': 3046} |
| `chromeProcesses` | {'int': 3046} |
| `chromeProfiles` | {'int': 3046} |
| `chromeRendererMaxPssKb` | {'int': 3046} |
| `chromeRendererPssKb` | {'int': 3046} |
| `chromeRenderers` | {'int': 3046} |
| `chromeTabs` | {'int': 3046} |
| `chromeTabsProbedProfiles` | {'int': 3046} |
| `chromeUtilityPssKb` | {'int': 3046} |
| `desktopPssKb` | {'int': 3046} |
| `hostPssKb` | {'int': 3046} |
| `kind` | {'str': 3046} |
| `memAvailableKb` | {'int': 3046} |
| `memTotalKb` | {'int': 3046} |
| `otherPssKb` | {'int': 3046} |
| `processes` | {'int': 3046} |
| `pssFallbackProcesses` | {'int': 3046} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
