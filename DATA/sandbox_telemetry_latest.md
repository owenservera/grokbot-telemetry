# sandbox_telemetry_parse — 2026-11-26 01:48:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3017905 lines=6685
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6670 |
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
| `chromeBrowserPssKb` | {'int': 6670} |
| `chromeGpuPssKb` | {'int': 6670} |
| `chromeOtherPssKb` | {'int': 6670} |
| `chromeProcesses` | {'int': 6670} |
| `chromeProfiles` | {'int': 6670} |
| `chromeRendererMaxPssKb` | {'int': 6670} |
| `chromeRendererPssKb` | {'int': 6670} |
| `chromeRenderers` | {'int': 6670} |
| `chromeTabs` | {'int': 6670} |
| `chromeTabsProbedProfiles` | {'int': 6670} |
| `chromeUtilityPssKb` | {'int': 6670} |
| `desktopPssKb` | {'int': 6670} |
| `hostPssKb` | {'int': 6670} |
| `kind` | {'str': 6670} |
| `memAvailableKb` | {'int': 6670} |
| `memTotalKb` | {'int': 6670} |
| `otherPssKb` | {'int': 6670} |
| `processes` | {'int': 6670} |
| `pssFallbackProcesses` | {'int': 6670} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
