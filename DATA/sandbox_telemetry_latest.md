# sandbox_telemetry_parse — 2026-11-27 13:12:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=430333 lines=958
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 950 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 950} |
| `chromeGpuPssKb` | {'int': 950} |
| `chromeOtherPssKb` | {'int': 950} |
| `chromeProcesses` | {'int': 950} |
| `chromeProfiles` | {'int': 950} |
| `chromeRendererMaxPssKb` | {'int': 950} |
| `chromeRendererPssKb` | {'int': 950} |
| `chromeRenderers` | {'int': 950} |
| `chromeTabs` | {'int': 950} |
| `chromeTabsProbedProfiles` | {'int': 950} |
| `chromeUtilityPssKb` | {'int': 950} |
| `desktopPssKb` | {'int': 950} |
| `hostPssKb` | {'int': 950} |
| `kind` | {'str': 950} |
| `memAvailableKb` | {'int': 950} |
| `memTotalKb` | {'int': 950} |
| `otherPssKb` | {'int': 950} |
| `processes` | {'int': 950} |
| `pssFallbackProcesses` | {'int': 950} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
