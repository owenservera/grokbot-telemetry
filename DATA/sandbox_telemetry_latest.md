# sandbox_telemetry_parse — 2026-11-25 09:10:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2686886 lines=5953
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5938 |
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
| `chromeBrowserPssKb` | {'int': 5938} |
| `chromeGpuPssKb` | {'int': 5938} |
| `chromeOtherPssKb` | {'int': 5938} |
| `chromeProcesses` | {'int': 5938} |
| `chromeProfiles` | {'int': 5938} |
| `chromeRendererMaxPssKb` | {'int': 5938} |
| `chromeRendererPssKb` | {'int': 5938} |
| `chromeRenderers` | {'int': 5938} |
| `chromeTabs` | {'int': 5938} |
| `chromeTabsProbedProfiles` | {'int': 5938} |
| `chromeUtilityPssKb` | {'int': 5938} |
| `desktopPssKb` | {'int': 5938} |
| `hostPssKb` | {'int': 5938} |
| `kind` | {'str': 5938} |
| `memAvailableKb` | {'int': 5938} |
| `memTotalKb` | {'int': 5938} |
| `otherPssKb` | {'int': 5938} |
| `processes` | {'int': 5938} |
| `pssFallbackProcesses` | {'int': 5938} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
