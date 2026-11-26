# sandbox_telemetry_parse — 2026-11-26 02:04:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3024697 lines=6700
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6685 |
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
| `chromeBrowserPssKb` | {'int': 6685} |
| `chromeGpuPssKb` | {'int': 6685} |
| `chromeOtherPssKb` | {'int': 6685} |
| `chromeProcesses` | {'int': 6685} |
| `chromeProfiles` | {'int': 6685} |
| `chromeRendererMaxPssKb` | {'int': 6685} |
| `chromeRendererPssKb` | {'int': 6685} |
| `chromeRenderers` | {'int': 6685} |
| `chromeTabs` | {'int': 6685} |
| `chromeTabsProbedProfiles` | {'int': 6685} |
| `chromeUtilityPssKb` | {'int': 6685} |
| `desktopPssKb` | {'int': 6685} |
| `hostPssKb` | {'int': 6685} |
| `kind` | {'str': 6685} |
| `memAvailableKb` | {'int': 6685} |
| `memTotalKb` | {'int': 6685} |
| `otherPssKb` | {'int': 6685} |
| `processes` | {'int': 6685} |
| `pssFallbackProcesses` | {'int': 6685} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
