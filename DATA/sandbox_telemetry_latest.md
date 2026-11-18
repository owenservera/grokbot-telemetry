# sandbox_telemetry_parse — 2026-11-18 15:55:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=879571 lines=1951
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1944 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1944} |
| `chromeGpuPssKb` | {'int': 1944} |
| `chromeOtherPssKb` | {'int': 1944} |
| `chromeProcesses` | {'int': 1944} |
| `chromeProfiles` | {'int': 1944} |
| `chromeRendererMaxPssKb` | {'int': 1944} |
| `chromeRendererPssKb` | {'int': 1944} |
| `chromeRenderers` | {'int': 1944} |
| `chromeTabs` | {'int': 1944} |
| `chromeTabsProbedProfiles` | {'int': 1944} |
| `chromeUtilityPssKb` | {'int': 1944} |
| `desktopPssKb` | {'int': 1944} |
| `hostPssKb` | {'int': 1944} |
| `kind` | {'str': 1944} |
| `memAvailableKb` | {'int': 1944} |
| `memTotalKb` | {'int': 1944} |
| `otherPssKb` | {'int': 1944} |
| `processes` | {'int': 1944} |
| `pssFallbackProcesses` | {'int': 1944} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
