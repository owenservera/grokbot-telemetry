# sandbox_telemetry_parse — 2026-11-18 11:18:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=796367 lines=1767
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1760 |
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
| `chromeBrowserPssKb` | {'int': 1760} |
| `chromeGpuPssKb` | {'int': 1760} |
| `chromeOtherPssKb` | {'int': 1760} |
| `chromeProcesses` | {'int': 1760} |
| `chromeProfiles` | {'int': 1760} |
| `chromeRendererMaxPssKb` | {'int': 1760} |
| `chromeRendererPssKb` | {'int': 1760} |
| `chromeRenderers` | {'int': 1760} |
| `chromeTabs` | {'int': 1760} |
| `chromeTabsProbedProfiles` | {'int': 1760} |
| `chromeUtilityPssKb` | {'int': 1760} |
| `desktopPssKb` | {'int': 1760} |
| `hostPssKb` | {'int': 1760} |
| `kind` | {'str': 1760} |
| `memAvailableKb` | {'int': 1760} |
| `memTotalKb` | {'int': 1760} |
| `otherPssKb` | {'int': 1760} |
| `processes` | {'int': 1760} |
| `pssFallbackProcesses` | {'int': 1760} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
