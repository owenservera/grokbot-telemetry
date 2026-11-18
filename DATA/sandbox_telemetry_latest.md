# sandbox_telemetry_parse — 2026-11-18 16:03:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=882742 lines=1958
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1951 |
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
| `chromeBrowserPssKb` | {'int': 1951} |
| `chromeGpuPssKb` | {'int': 1951} |
| `chromeOtherPssKb` | {'int': 1951} |
| `chromeProcesses` | {'int': 1951} |
| `chromeProfiles` | {'int': 1951} |
| `chromeRendererMaxPssKb` | {'int': 1951} |
| `chromeRendererPssKb` | {'int': 1951} |
| `chromeRenderers` | {'int': 1951} |
| `chromeTabs` | {'int': 1951} |
| `chromeTabsProbedProfiles` | {'int': 1951} |
| `chromeUtilityPssKb` | {'int': 1951} |
| `desktopPssKb` | {'int': 1951} |
| `hostPssKb` | {'int': 1951} |
| `kind` | {'str': 1951} |
| `memAvailableKb` | {'int': 1951} |
| `memTotalKb` | {'int': 1951} |
| `otherPssKb` | {'int': 1951} |
| `processes` | {'int': 1951} |
| `pssFallbackProcesses` | {'int': 1951} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
